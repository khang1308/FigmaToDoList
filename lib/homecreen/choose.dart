import 'package:flutter/material.dart';

class ChooseLessonsCourse extends StatefulWidget {
  const ChooseLessonsCourse({super.key});

  @override
  State<ChooseLessonsCourse> createState() => _ChooseLessonsCourseState();
}

class _ChooseLessonsCourseState extends State<ChooseLessonsCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const SizedBox(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'HTML',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          )),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              Container(
                height: 278,
                width: 343,
                decoration: const BoxDecoration(
                    color: Color(0xffFFF5E4),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16))),
                child: Image.asset('asset/images/CLC.png'),
              ),
              Container(
                width: 343,
                height: 56,
                color: const Color(0xffFFF5E4),
                padding: const EdgeInsets.only(left: 16, right: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Image.asset('asset/images/CLC1.png')],
                ),
              ),
              Container(
                width: 343,
                height: 90,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HTML',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3C3A36)),
                    ),
                    Text(
                      'Advanced web applications',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3C3A36)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  width: 343,
                  height: 88,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(),
                  ),
                  child: Center(
                      child: Row(
                    children: [
                      Image.asset('asset/images/CLC2.png'),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Main Tags',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff3C3A36)),
                                ),
                              ],
                            ),
                            Image.asset('asset/images/CLC3.png')
                          ])
                    ],
                  )),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  width: 343,
                  height: 88,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(),
                  ),
                  child: Center(
                      child: Row(
                    children: [
                      Image.asset('asset/images/CLC4.png'),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Main Tags',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff3C3A36)),
                                ),
                              ],
                            ),
                            Image.asset('asset/images/CLC5.png')
                          ])
                    ],
                  )),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  width: 343,
                  height: 88,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(),
                  ),
                  child: Center(
                      child: Row(
                    children: [
                      Image.asset('asset/images/CLC6.png'),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Main Tags',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff3C3A36)),
                                ),
                              ],
                            ),
                            Image.asset('asset/images/CLC7.png')
                          ])
                    ],
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
