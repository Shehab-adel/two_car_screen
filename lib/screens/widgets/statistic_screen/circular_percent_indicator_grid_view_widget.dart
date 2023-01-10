import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../utils.dart';

class CircularPercentIndicatorGridViewWidget extends StatelessWidget {
  const CircularPercentIndicatorGridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .7,
      width: double.infinity,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 2.0,
            childAspectRatio: 0.7,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Card(
              color: index == 0
                  ? const Color.fromARGB(255, 149, 46, 168)
                  : Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: CircularPercentIndicator(
                radius: 50.0,
                lineWidth: 10.0,
                percent: progressPercent[index] / 100,
                animation: true,
                animationDuration: 1700,
                header: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Image.asset(
                        circularPercentMap.values.elementAt(index),
                        width: 42,
                        height: 25,
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(bottom: 40),
                        child: Text(
                          circularPercentMap.keys.elementAt(index),
                          style: TextStyle(
                              color: index == 0 ? Colors.white : Colors.black,
                              fontSize: 25),
                        )),
                  ],
                ),
                center: Text("${progressPercent[index].toStringAsFixed(0)}%"),
                backgroundColor: progressMap.values.elementAt(index),
                progressColor: progressMap.keys.elementAt(index),
                circularStrokeCap: CircularStrokeCap.round,
              ),
            );
          }),
    );
  }
}
