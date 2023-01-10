import 'package:flutter/material.dart';

class CardImageWidget extends StatelessWidget {
  CardImageWidget({super.key, required this.index});

  late Size size;
  int index;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(left: 12),
            alignment: Alignment.topLeft,
            child: const Text('Coupe',
                style: TextStyle(color: Colors.grey, fontSize: 16))),
        Image.asset(
          'assets/images/car_$index.PNG',
          height: size.height * .15,
        ),
      ],
    );
  }
}
