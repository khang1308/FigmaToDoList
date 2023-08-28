import 'package:flutter/material.dart';

class TestQuestion extends StatefulWidget {
  const TestQuestion({super.key});

  @override
  State<TestQuestion> createState() => _TestQuestionState();
}

class _TestQuestionState extends State<TestQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const SizedBox(
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: const Column(
                    children: [
                      Text(
                        '1 of 20',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Which tag for \nthe biggest header?',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFF5EE),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all()),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Image.asset('asset/images/TQ1.png')),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all()),
                  child: const Row(
                    children: [
                      Text(
                        'A.',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3C3A36)),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '<h5>',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3C3A36)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all()),
                  child: const Row(
                    children: [
                      Text(
                        'B.',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3C3A36)),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '<p>',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3C3A36)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                      color: const Color(0xffFFF5EE),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: const Color(0xffF3705A))),
                  child: const Row(
                    children: [
                      Text(
                        'C.',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3C3A36)),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '<h1>',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3C3A36)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 61,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xffE3562A)),
              child: const Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffffffff)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
