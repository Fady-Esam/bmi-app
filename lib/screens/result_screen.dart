import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.isMale,
      required this.result,
      required this.age});

  final bool isMale;
  final double result;
  final int age;

  String get res {
    String ress = '';
    if (result < 18.5)
      ress = 'Thin';
    else if (result >= 18.5 && result <= 24.9)
      ress = 'Normal';
    else if (result >= 25.0 && result <= 29.9)
      ress = 'Overweight';
    else if (result >= 30) ress = 'Obese';
    return ress;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text(
          'Result',
          style: TextStyle(
            color: Color.fromARGB(218, 255, 255, 255),
            fontSize: 27,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: DefaultTextStyle(
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w800,
            color: Color.fromARGB(226, 255, 255, 255),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Gender: ${isMale ? 'Male' : 'Female'}'),
              const SizedBox(height: 120),
              Text('Result: ${result.toStringAsFixed(1)}'),
              const SizedBox(height: 120),
              Text('Healthiness: $res'),
              const SizedBox(height: 120),
              Text('Age: $age'),
            ],
          ),
        ),
      ),
    );
  }
}
