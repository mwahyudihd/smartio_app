import 'package:flutter/material.dart';

class ChangeDeviceScreen extends StatefulWidget {
  const ChangeDeviceScreen({super.key});

  @override
  State<ChangeDeviceScreen> createState() => _ChangeDeviceScreenState();
}

class _ChangeDeviceScreenState extends State<ChangeDeviceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.amber,
          
        ),
        title: Text("Change Device Form"),
        titleTextStyle: TextStyle(
          color: Colors.amber
        ),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        child: Column(
          children: [
            TextFormField(
            )
          ],
        ),
      ),
    );
  }
}