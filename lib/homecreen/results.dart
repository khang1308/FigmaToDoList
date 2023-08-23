import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  const Results({super.key});

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          keyboardType: TextInputType.visiblePassword,
          // obscureText: true,
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: 'UI',
              suffixIcon: const Icon(Icons.search_sharp),
              icon: SizedBox(
                width: 50,
                height: 50,
                child: ElevatedButton(
                  
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                    onPressed: () {},
                    child: const Icon(Icons.arrow_back_ios_new_outlined)),
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 12, left: 16),
          child: Column(children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '2 Results',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3C3A36)),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              color: const Color(0xffE6EDF4),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: Image.asset('asset/images/RS1.png'),
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
                                      borderRadius:
                                          BorderRadius.circular(20)))),
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
                )),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              color: const Color(0xffF8F2EE),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: Image.asset('asset/images/RS2.png'),
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
                                      borderRadius:
                                          BorderRadius.circular(20)))),
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
                margin: const EdgeInsets.only(top: 16),
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
                )),
          ]),
        ),
      ),
    );
  }
}
