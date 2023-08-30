import 'package:flutter/material.dart';

class AllTask extends StatefulWidget {
  const AllTask({super.key});

  @override
  State<AllTask> createState() => _AllTaskState();
}

class _AllTaskState extends State<AllTask> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.white;
      }
      return Colors.blue;
    }

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
                          content: Row(
                            children: [
                              const TextField(
                                decoration: InputDecoration(
                                    labelText: 'Wrire task here'),
                              ),
                              Checkbox(
                                checkColor: Colors.red,
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('SUBMIT'))
                          ],
                        ),
                        );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(border: Border.all()),
        padding: const EdgeInsets.all(15),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Complete',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'All',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Incomplete',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          )
        ],
        ),
      ),
    );
  }
}
