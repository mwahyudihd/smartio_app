import 'package:flutter/material.dart';
import 'package:smartio_app/features/sensor_monitoring/ui/components/charts.dart';

class MonitoringScreen extends StatefulWidget {
  const MonitoringScreen({super.key});

  @override
  State<MonitoringScreen> createState() => _MonitoringScreenState();
}

class _MonitoringScreenState extends State<MonitoringScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Margin(10, 25).render(),
            Text("Chart not yet rendered..."),
            Margin(10, 15).render(),
          ],
        ),
      ),
    );
  }
}