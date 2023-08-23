import 'package:flutter/material.dart';
import 'package:quizz_app/main.dart';

void main() {
  runApp(const MyApp());
}

class HomeCreen extends StatefulWidget {
  const HomeCreen({super.key});

  @override
  State<HomeCreen> createState() => _HomeCreenState();
}

class _HomeCreenState extends State<HomeCreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 50, left: 16, right: 16),
              height: 192,
              child: Column(
                children: [
                  SizedBox(
                    // width: 373,
                    height: 72,
                    child: Row(children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hello,'),
                          Text(
                            'Juana Antonieta',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "asset/images/man1.1.png",
                            width: 42,
                            height: 42,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 53,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || !value.contains('@')) {
                          return 'Tên đăng nhập sai';
                        } else if (value.contains(' ')) {
                          return 'không chứa khoảng trắng';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Category:',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(20)))),
                        onPressed: () {},
                        child: const Text(
                          "#CSS",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(20)))),
                        onPressed: () {},
                        child: const Text(
                          "#UX",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(20)))),
                        onPressed: () {},
                        child: const Text(
                          "#Swift",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(20)))),
                        onPressed: () {},
                        child: const Text(
                          "#UI",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            color: const Color(0xffF8F2EE),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 16),
                  child: Image.asset('asset/images/HC1.png'),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                        onPressed: () {},
                        child: const Text(
                          "\$ 50",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              width: 343,
              height: 103,
              margin: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.only(left: 16),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '3 h 30 min ',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'UI',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Advanced mobile interface design',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 16,
          ),
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                color: Color(0xffE6EDF4)),
            width: 343,
            height: 194,
            child: Image.asset('asset/images/HC2.png'),
          ),
        ]),
      ),
      bottomNavigationBar: Container(
        height: 72,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Courses',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.purple,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xffE3562A),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
