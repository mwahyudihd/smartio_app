import 'package:flutter/material.dart';

class DeviceInfoScreen extends StatefulWidget {
  const DeviceInfoScreen({super.key});

  @override
  State<DeviceInfoScreen> createState() => _DeviceInfoScreenState();
}

class _DeviceInfoScreenState extends State<DeviceInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.amber,
        ),
        title: Text("Device Information"),
        backgroundColor: Colors.brown,
        titleTextStyle: TextStyle(color: Colors.amber),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text("Device Information"),
              Text("Device IP"),
              Text("Status")
            ],
          ),
        ),
      ),
    );
  }
}
