import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:quizz_app/widget/items.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'editscreen.dart';

//Đây là màn hình đầu tiên này
class Morelist extends StatefulWidget {
  static const String routeName = "/list";
  const Morelist({super.key});

  @override
  State<Morelist> createState() => _MorelistState();
}

class _MorelistState extends State<Morelist> {
  //Khởi tạo list rỗng gồm nhiều item mang kiểu dữ liệu String
  List<TodoModel> todolist = [];

  List<Color> colors = [
    Colors.pinkAccent,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.purple,
  ];

  @override
  void initState() {
    super.initState();
    _getToDoListFromPref();
  }

  Future<void> _getToDoListFromPref() async {
    //dòng 36 bắt buộc phải có nếu muốn truy cập tới "SharedPreferences".
    //dòng 36 như kiểu, gọi chủ nhà mở cửa nhà kho ấy :D
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      //dòng này thì lấy dữ liệu từ "nhà kho" có từ khóa "todolist"
      //và gán nó cho titles, nếu ko có từ khóa đó thì gán là list rỗng "[]"
      //từ khóa ở đây phải trùng với từ khóa bạn gọi setStringList bên dưới.
      //jsonDecode là convert từ String thành kiểu dữ liệu dynamic

      todolist = prefs
          .getStringList("todoList")!
          .map((e) => TodoModel.fromMap(jsonDecode(e)))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.only(left: 90),
          child: const Text(
            'Home',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).pushNamed('/add',
              arguments: (TodoModel todoCuaKhang) {
            setState(() {
              todolist.add(todoCuaKhang);
            });
          });
          final prefs = await SharedPreferences.getInstance();
          List<String> todoListStr =
              todolist.map((e) => jsonEncode(e.toMap())).toList();
          prefs.setStringList("todoList", todoListStr);
        },
        child: const Icon(Icons.add),
      ),
      body: todolist.isNotEmpty
          ? Column(children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: todolist.length,
                      itemBuilder: ((context, index) {
                        return Container(
                          margin: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          height: 80,
                          decoration: BoxDecoration(
                              color: colors[(index % colors.length)]
                                  .withOpacity(0.8),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: ListTile(
                              //Widget Text cần biến mang kiểu dữ liệu là String,
                              //nên phải truyền biến mang dữ liệu String vào, ở đây là titles[index]
                              title: Text(todolist[index].title),
                              subtitle: Text(todolist[index].content),
                              leading: const Icon(Icons.person),
                              trailing: SizedBox(
                                width: 200,
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                        onTap: () async {
                                          Navigator.of(context).pushNamed(
                                              EditScreen.routeName,
                                              arguments: EditScreenArg(
                                                todo: todolist[index],
                                                onEdit: (TodoModel
                                                    todoCuaKhang) async {
                                                  final prefs =
                                                      await SharedPreferences
                                                          .getInstance();
                                                  setState(() {
                                                    todolist[index] =
                                                        todoCuaKhang;

                                                    List<String> todoListStr =
                                                        todolist
                                                            .map((e) =>
                                                                jsonEncode(
                                                                    e.toMap()))
                                                            .toList();
                                                    prefs.setStringList(
                                                        "todoList",
                                                        todoListStr);
                                                  });
                                                },
                                              ));
                                          // await Navigator.of(context)
                                          //     .pushNamed(EditScreen(
                                          //  arguments: todolist[index],
                                          //   onEdit: (TodoModel todoCuaKhang) {
                                          //     setState(() async {
                                          //       todolist[index] = todoCuaKhang;
                                          //       final prefs =
                                          //           await SharedPreferences
                                          //               .getInstance();
                                          //       List<String> todoListStr =
                                          //           todolist
                                          //               .map((e) => jsonEncode(
                                          //                   e.toMap()))
                                          //               .toList();
                                          //       prefs.setStringList(
                                          //           "todoList", todoListStr);
                                          //     });
                                          //   },
                                          //   arguments:
                                          //       (TodoModel todoCuaKhang) {},
                                          // ) as String);
                                        },
                                        child: const Icon(Icons.edit)),
                                    InkWell(
                                        onTap: () async {
                                          setState(() {
                                            todolist.removeAt(index);
                                          });
                                          //jsonEncode, để convert bất cứ thứ gì thành String
                                          //.map là để duyệt qua các phần tử trong list
                                          //toList là để biến những phẩn từ thành List
                                          //.map().toList nói chung là xử lý từng phần tử, và kết quả cuối cùng nhận đc là list chứa những phần tử đó
                                          final prefs = await SharedPreferences
                                              .getInstance();
                                          List<String> todoListStr = todolist
                                              .map((e) => jsonEncode(e.toMap()))
                                              .toList();
                                          prefs.setStringList(
                                              "todoList", todoListStr);
                                        },
                                        child: const Icon(Icons.delete)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      })))
            ])
          : const Center(
              child: Text("No Record Found"),
            ),
    );
  }
}
