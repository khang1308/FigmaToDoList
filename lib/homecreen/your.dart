import 'package:flutter/material.dart';

class YourCourses extends StatefulWidget {
  const YourCourses({super.key});

  @override
  State<YourCourses> createState() => _YourCoursesState();
}

class _YourCoursesState extends State<YourCourses> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const SizedBox(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          title: const Text(
            'Your Courses',
      
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          )),
      body: Container(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 16, bottom: 12),
              width: 343,
              height: 194,
              color: const Color(0xffF8F2EE),
              child: Image.asset('asset/images/YC.png'),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 16, left: 16, right: 16, bottom: 8),
              height: 103,
              width: 343,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Left 1 h 20 min ',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff5BA092)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Swift ',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff3C3A36)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Advanced iOS apps',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3C3A36)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, bottom: 12),
              width: 343,
              height: 194,
              color: const Color(0xffE6EDF4),
              child: Image.asset('asset/images/YC1.png'),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 16, left: 16, right: 16, bottom: 8),
              height: 103,
              width: 343,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Left 1 h 20 min ',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff5BA092)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Scrum ',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff3C3A36)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Advanced project organization course',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3C3A36)),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
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
