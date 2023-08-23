import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
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
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          )),
      body: Column(
        children: [
          Image.asset('asset/images/PD.png'),
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.only(right: 16, left: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                const SizedBox(
                  height: 16,
                ),
                const Row(
                  children: [
                    Text(
                      'About the course',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                        'You can launch a new career in web develop-\nment today by learning HTML & CSS. You don need\na computer science degree or expensive software. All\nyou need is a computer, a bit of time, a lot of \ndetermination, and a teacher you trust.'),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const Row(
                  children: [
                    Text(
                      'Duration',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      '1 h 30 min',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(
                  height: 53,
                ),
                Container(
                  width: 343,
                  height: 56,
                  decoration: const BoxDecoration(
                    color: Color(0xffE3562A),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffE3562A),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFFFFFF)),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
