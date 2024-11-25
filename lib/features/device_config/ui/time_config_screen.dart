import 'package:flutter/material.dart';
import 'package:smartio_app/features/control_system/ui/components/buttons.dart';

class TimeConfigScreen extends StatefulWidget {
  const TimeConfigScreen({super.key});

  @override
  State<TimeConfigScreen> createState() => _TimeConfigScreenState();
}

class _TimeConfigScreenState extends State<TimeConfigScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.amber,
        ),
        backgroundColor: Colors.brown,
        title: Text("Time Mode Configuration"),
        titleTextStyle: TextStyle(
          color: Colors.amber,
        ),
      ),
      body: Container(
      child: Center(
        child: Column(
          children: [
            Margin(10, 25).render(),
          ],
        ),
      ),
    ),
    );
  }
}