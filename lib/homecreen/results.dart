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
        leading: const SizedBox(
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        title: const TextField(
          keyboardType: TextInputType.visiblePassword,
          // obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'UI',
            suffixIcon: Icon(Icons.search_sharp),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 1)),
              child: Column(
                children: [
                  Container(
                    color: const Color(0xffE6EDF4),
                    child: Column(
                      children: [
                        Column(
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
                                                    BorderRadius.circular(
                                                        20)))),
                                    onPressed: () {},
                                    child: const Text(
                                      "\$ 50",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
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
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 1)),
              child: Column(
                children: [
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
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
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
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
