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
          color: Color.fromARGB(255, 173, 203, 110),
          
        ),
        title: Text("Change Device Form"),
        titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 173, 203, 110)
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