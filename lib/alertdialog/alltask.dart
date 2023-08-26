import 'package:flutter/material.dart';

class AllTask extends StatefulWidget {
  const AllTask({super.key});

  @override
  State<AllTask> createState() => _AllTaskState();
}

class _AllTaskState extends State<AllTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Task'),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: ElevatedButton(
              style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(0),
                  backgroundColor: MaterialStatePropertyAll(Colors.white)),
              child: const Text(
                'Create task',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text('Create task'),
                          content: const TextField(
                            decoration:
                                InputDecoration(labelText: 'Wrire task here'),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('SUBMIT'))
                          ],
                        ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
