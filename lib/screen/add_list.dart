import 'package:flutter/material.dart';
import 'package:quizz_app/widget/items.dart';

class AddList extends StatefulWidget {
  static const String routeName = "/AddList";
  const AddList({super.key, required this.onAdd});
  final void Function(TodoModel todo) onAdd;
  @override
  State<AddList> createState() => _AddListState();
}

late final String text;

class _AddListState extends State<AddList> {
  TextEditingController titleCtr = TextEditingController();
  TextEditingController contCtr = TextEditingController();
  // TextEditingController descCtr = TextEditingController();

  // ignore: non_constant_identifier_names
  void OnPressed(BuildContext context) {
    final TodoModel todoCuaKhang =
        TodoModel(title: titleCtr.text, content: contCtr.text);
    widget.onAdd.call(todoCuaKhang);
    Navigator.of(context).pop();
  }

//ok r đó Sai vì xung đột kiểu dữ liệu, vì bạn khai báo 1 kiểu String khác ở màn hình này, mà bạn import ở màn hình kia nên bị xung đột
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Add Data")),
        body: Form(child: Builder(builder: (context) {
          return Column(children: [
            TextFormField(
              controller: titleCtr,
              decoration: const InputDecoration(hintText: "title"),
              validator: (value) {
                var newValue = value ?? "";
                if (newValue.isEmpty) {
                  return 'title is Required';
                }
                return null;
              },
            ),
            TextFormField(
              controller: contCtr,
              decoration: const InputDecoration(hintText: "Content"),
              validator: (value) {
                var newValue = value ?? "";
                if (newValue.isEmpty) {
                  return 'Content is Required';
                }
                return null;
              },
            ),
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                //Validate trả về true nếu Form của bạn là hợp lệ, trả về false nếu ko hợp lệ
                //Nghĩa là cái validate trên kia nó ko bị lỗi :D
                if (Form.of(context).validate()) {
                  //đúng thì chạy cái OnPress
                  OnPressed(context);
                }
              },
              child: const Text("Save"),
            )
          ]);
        })));

  }
}
