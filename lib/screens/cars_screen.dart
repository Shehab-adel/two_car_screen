import 'package:cars_app/screens/statistics_screen.dart';
import 'package:cars_app/screens/widgets/card_screen/bottom_card_row_widget.dart';
import 'package:cars_app/screens/widgets/card_screen/card_image_widget.dart';
import 'package:cars_app/screens/widgets/card_screen/head_card_row_widget.dart';
import 'package:flutter/material.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({super.key});

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const StatisticScreen()));
          },
          icon: const Icon(Icons.navigate_next),
        ),
        title: Text('Move To Next Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 9.0,
              mainAxisSpacing: 9.9,
              childAspectRatio: 0.7,
            ),
            itemCount: 9,
            itemBuilder: (context, index) {
              return Card(
                elevation: 8,
                child: Column(
                  children: [
                    headCardRowWidget(index: index),
                    CardImageWidget(
                      index: index,
                    ),
                    SizedBox(
                      height: size.height * .05,
                    ),
                    const BottomCardRowWidget(),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
