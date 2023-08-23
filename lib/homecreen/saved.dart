import 'package:flutter/material.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: const SizedBox(
            child: Icon(
          Icons.arrow_back_ios_new_sharp,
          color: Colors.black,
        )),
        backgroundColor: Colors.white,
        title: const Text(
          'Saved',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Column(children: [
        const SizedBox(
          height: 127,
        ),
        Center(child: Image.asset('asset/images/Saved.png')),
        const SizedBox(
          height: 32,
        ),
        Column(
          children: [
            const Center(
              child: Text(
                ' Course was saved',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Center(
              child: Text(
                'You can find this course in \nyour profile',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
            width: 309,
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
            )
          ],
        )
      ]),
    );
  }
}
