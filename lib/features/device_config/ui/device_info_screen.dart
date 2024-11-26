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
          color: Color.fromARGB(255, 173, 203, 110),
        ),
        title: Text("Device Information"),
        backgroundColor: Colors.brown,
        titleTextStyle: TextStyle(color: Color.fromARGB(255, 173, 203, 110)),
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
