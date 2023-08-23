import 'package:flutter/material.dart';

class CourseTests extends StatefulWidget {
  const CourseTests({super.key});

  @override
  State<CourseTests> createState() => _CourseTestsState();
}

class _CourseTestsState extends State<CourseTests> {
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
              'HTML',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            )),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              const SizedBox(
                height: 24,
              ),
              Container(
                width: 343,
                height: 127,
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        'Tags For Headers',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff3C3A36)),
                      ),
                    ),
                    const Expanded(
                      child: Text(
                        '3 of 11 lessons',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3C3A36)),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
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
                          Expanded(
                            child: Container(
                              color: const Color(0xffF8F2EE),
                              child: const Center(
                                child: Text(
                                  'Tests',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff3C3A36)),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
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
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                width: 343,
                height: 463,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Image.asset('asset/images/CT1.png'),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Quiz 1',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffE3562A)),
                    ),
                    const Text(
                      'Tags For Headers',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3C3A36)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Let’s put your memory on this topic test.\nSolve tasks and check your knowledge.',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff3C3A36)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        width: 295,
                        height: 56,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: const Color(0xffE3562A)),
                        ),
                        child: const Center(
                          child: Text(
                            'Begin',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff3C3A36)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 343,
                height: 463,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('asset/images/CT2.png'),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
