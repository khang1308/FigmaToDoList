import 'package:flutter/material.dart';

class NotFound extends StatefulWidget {
  const NotFound({super.key});

  @override
  State<NotFound> createState() => _NotFoundState();
}

class _NotFoundState extends State<NotFound> {
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
      body: Column(children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            // obscureText: true,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              labelText: 'Cooking',
              suffixIcon: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('asset/images/SearchIcon.png'),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 31,
        ),
        Center(child: Image.asset('asset/images/NF1.png')),
        const SizedBox(
          height: 32,
        ),
        const Text(
          'Course not found',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Try searching the course with \na different keyword',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ]),
    );
  }
}
