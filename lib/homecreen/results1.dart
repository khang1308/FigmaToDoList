import 'package:flutter/material.dart';

class Results1 extends StatefulWidget {
  const Results1({super.key});

  @override
  State<Results1> createState() => _Results1State();
}

class _Results1State extends State<Results1> {
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
            'Results',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          )),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 163,
            ),
            Image.asset('asset/images/Resu1.png'),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Congratulations',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Congratulations for getting \nall the answers correct!',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 125,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 116, vertical: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff65AAEA),
                      ),
                      child: Image.asset('asset/images/login4.png')),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff65AAEA),
                      ),
                      child: Image.asset('asset/images/login2.png')),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff65AAEA),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('asset/images/login3.1.png'),
                          Image.asset('asset/images/login3.2.png')
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
