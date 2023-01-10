import 'package:flutter/material.dart';

class BottomCardRowWidget extends StatelessWidget {
  const BottomCardRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.person_outline_outlined,
          color: Colors.grey,
        ),
        const Text(
          '4',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Image.asset(
          'assets/images/arr.PNG',
          width: 20,
        ),
        const Text(
          'Manual',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        const Text('\$40/d')
      ],
    );
  }
}
