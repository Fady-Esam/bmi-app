import 'package:flutter/material.dart';

import 'result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;

  double heightVal = 170.0;

  int weight = 70;

  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMI App',
          style: TextStyle(
            color: Color.fromARGB(216, 255, 255, 255),
            fontSize: 27,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 7),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (!isMale) {
                      setState(() {
                        isMale = true;
                      });
                    }
                  },
                  child: Container(
                    height: 190,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: isMale ? Colors.teal : Colors.blueGrey,
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 20, top: 12),
                          child: Icon(
                            Icons.male,
                            size: 100,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    if (isMale) {
                      setState(() {
                        isMale = false;
                      });
                    }
                  },
                  child: Container(
                    height: 190,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: isMale ? Colors.blueGrey : Colors.teal,
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 20, top: 12),
                          child: Icon(
                            Icons.female,
                            size: 100,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              height: 230,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueGrey,
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        heightVal.toStringAsFixed(1),
                        style: const TextStyle(
                          fontSize: 58,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(230, 255, 255, 255),
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Slider(
                    value: heightVal,
                    onChanged: (newvalue) {
                      setState(() {
                        heightVal = newvalue;
                      });
                    },
                    min: 50,
                    max: 250,
                    activeColor: Colors.teal,
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 190,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey,
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                      ),
                      const Text(
                        'Weight',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        '$weight',
                        style: const TextStyle(
                          fontSize: 55,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FloatingActionButton(
                            heroTag: 'weight--',
                            onPressed: () {
                              if (weight == 20) {
                                return;
                              }
                              setState(() {
                                weight--;
                              });
                            },
                            mini: true,
                            backgroundColor: Colors.teal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Icon(
                              Icons.remove,
                              size: 25,
                              color: Color.fromARGB(232, 255, 255, 255),
                            ),
                          ),
                          FloatingActionButton(
                            heroTag: 'weight++',
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            mini: true,
                            backgroundColor: Colors.teal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Icon(
                              Icons.add,
                              size: 25,
                              color: Color.fromARGB(232, 255, 255, 255),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  height: 190,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey,
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                      ),
                      const Text(
                        'Age',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        '$age',
                        style: const TextStyle(
                          fontSize: 55,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FloatingActionButton(
                            heroTag: 'age--',
                            onPressed: () {
                              if (age == 10) {
                                return;
                              }
                              setState(() {
                                age--;
                              });
                            },
                            mini: true,
                            backgroundColor: Colors.teal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Icon(
                              Icons.remove,
                              size: 25,
                              color: Color.fromARGB(232, 255, 255, 255),
                            ),
                          ),
                          FloatingActionButton(
                            heroTag: 'age++',
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            mini: true,
                            backgroundColor: Colors.teal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Icon(
                              Icons.add,
                              size: 25,
                              color: Color.fromARGB(232, 255, 255, 255),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              height: 60,
              width: 415,
              color: Colors.teal,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => ResultScreen(
                        isMale: isMale,
                        result: (weight / ((heightVal * heightVal) / 10000)),
                        age: age,
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Calculate',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(216, 255, 255, 255),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
