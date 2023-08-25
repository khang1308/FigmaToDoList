import 'package:flutter/material.dart';

class CourseLesson extends StatefulWidget {
  const CourseLesson({super.key});

  @override
  State<CourseLesson> createState() => _CourseLessonState();
}

class _CourseLessonState extends State<CourseLesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: const SizedBox(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          title: const Text(
            'HTML',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 127,
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Tags For Headers',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff3C3A36)),
                  ),
                  const Text(
                    '3 of 11 lessons',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff3C3A36)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
                          color: const Color(0xffF8F2EE),
                          child: const Center(
                            child: Text(
                              'Lessons',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff3C3A36)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Container(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
                          color: const Color(0xffF8F2EE),
                          child: const Center(
                            child: Text(
                              'Test',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff3C3A36)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Container(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
                          color: const Color(0xffF8F2EE),
                          child: const Center(
                            child: Text(
                              'Discuss',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff3C3A36)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              width: double.infinity,
              color: const Color(0xffE6EDF4),
              child: Image.asset('asset/images/CL1.png'),
            ),
            Container(
                color: const Color(0xffE6EDF4),
                padding: const EdgeInsets.only(right: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('asset/images/CL2.png'),
                  ],
                )),
            const SizedBox(
              height: 24,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Introduction',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Text(
              'You can launch a new career in web develop-\nment today by learning HTML & CSS. You don\'t need\n a computer science degree or expensive software.\n All you need is a computer, a bit of time, \na lot of determination, and a teacher you trust.\nOnce the form data has been validated on the \nclient-side, it is okay to submit the form. And, since we covered validation in the previous article, we\'re \nready to submit! This article looks at what happens \nwhen a user submits a form — where does the data \ngo, and how do we handle it when it gets there? We \nalso look at some of the security concerns.',
              style: TextStyle(
                height: 1.5,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              textScaleFactor: 1.17,
            ),
          ],
        ),
      ),
    );
  }
}
