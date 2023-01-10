import 'package:cars_app/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecommendedWidget extends StatelessWidget {
  RecommendedWidget({super.key});

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
        height: size.height * .35,
        width: size.width * .9,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Card(
                color: recommendedCarsColors[index],
                elevation: 9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 18),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(CupertinoIcons.arrow_2_circlepath),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              '64% Recommend',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * .02,
                        ),
                        Image.asset(
                            recommendedCarsImages.values.elementAt(index)),
                        SizedBox(
                          height: size.height * .02,
                        ),
                        Text(
                          recommendedCarsImages.keys.elementAt(index),
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: size.height * .02,
                        ),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.arrow_2_squarepath,
                              color: Colors.grey.shade600,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              recommendedCarsSpeed.keys.elementAt(index),
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade600),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Icon(
                              CupertinoIcons.settings,
                              color: Colors.grey.shade600,
                              size: 25,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Icon(
                              CupertinoIcons.bolt,
                              color: Colors.grey.shade600,
                              size: 30,
                            ),
                            SizedBox(
                              width: size.width * .2,
                            ),
                            Text(
                              recommendedCarsSpeed.values.elementAt(index),
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade600),
                            ),
                          ],
                        )
                      ]),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
            itemCount: 3));
  }
}
