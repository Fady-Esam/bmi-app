import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
  const GenderContainer({
    super.key,
    required this.isMale,
    required this.gender,
  });

  final bool isMale;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: isMale ? Colors.teal : Colors.blueGrey,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 12),
            child: Icon(
              gender == 'Male' ? Icons.male : Icons.female,
              size: 100,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Text(
            gender,
            style: const TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
