import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_charts/flutter_charts.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: double.infinity,
        color: Colors.white,
        child: chartToRun());
  }

  Widget chartToRun() {
    LabelLayoutStrategy? xContainerLabelLayoutStrategy;
    ChartData chartData;
    ChartOptions chartOptions = const ChartOptions(
      legendOptions: LegendOptions(
        legendColorIndicatorWidth: 0,
      ),
      xContainerOptions: XContainerOptions(xBottomMinTicksHeight: 0),
      yContainerOptions: YContainerOptions(
          isYContainerShown: false,
          yLabelsPadLR: 8,
          yLeftMinTicksWidth: 20,
          yRightMinTicksWidth: 30),
      dataContainerOptions: DataContainerOptions(
        gridLinesColor: Colors.white,
        startYAxisAtDataMinRequested: true,
      ),
    );
    // Example shows a demo-type data generated randomly in a range.
    chartData = RandomChartData.generated(
      chartOptions: chartOptions,
    );

    var verticalBarChartContainer = VerticalBarChartTopContainer(
      chartData: chartData,
      xContainerLabelLayoutStrategy: xContainerLabelLayoutStrategy,
    );

    var verticalBarChart = VerticalBarChart(
      painter: VerticalBarChartPainter(
        verticalBarChartContainer: verticalBarChartContainer,
      ),
    );
    return verticalBarChart;
  }
}
