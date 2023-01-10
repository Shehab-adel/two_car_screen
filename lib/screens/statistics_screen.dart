import 'package:cars_app/screens/widgets/statistic_screen/chart_widget.dart';
import 'package:cars_app/screens/widgets/statistic_screen/circular_percent_indicator_grid_view_widget.dart';
import 'package:cars_app/screens/widgets/statistic_screen/recommended_widget.dart';
import 'package:flutter/material.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height * 9.7,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CircularPercentIndicatorGridViewWidget(),
                const ChartWidget(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                RecommendedWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
