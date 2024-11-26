import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartio_app/features/control_system/ui/components/buttons.dart';

class ControlSystemScreen extends StatefulWidget {
  const ControlSystemScreen({super.key});

  @override
  State<ControlSystemScreen> createState() => _ControlSystemScreenState();
}

class _ControlSystemScreenState extends State<ControlSystemScreen> {
  bool isThreshold = false;
  bool isTimeBased = false;
  String thresholdModeIcon = "temp_off";
  String timeModeIcon = "time_off";

  double _backgroundTopPosition = 100;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        _backgroundTopPosition = -100;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
            top: _backgroundTopPosition,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/water-layer-1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
            top: _backgroundTopPosition,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/water-layer-3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(seconds: 3),
            curve: Curves.easeInOut,
            top: _backgroundTopPosition,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/water-layer-2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  "Watering Mode:",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 173, 203, 110),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 173, 203, 110).withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Buttons().listToggle(
                        isThreshold,
                        (value) {
                          setState(() {
                            isThreshold = value;
                            isTimeBased = false;
                            thresholdModeIcon =
                                isThreshold ? "temp_on" : "temp_off";
                            timeModeIcon = isTimeBased ? "time_on" : "time_off";
                          });
                        },
                        "Threshold Mode",
                        thresholdModeIcon,
                      ),
                      SizedBox(height: 10),
                      Buttons().listToggle(
                        isTimeBased,
                        (value) {
                          setState(() {
                            isTimeBased = value;
                            isThreshold = false;
                            thresholdModeIcon =
                                isThreshold ? "temp_on" : "temp_off";
                            timeModeIcon = isTimeBased ? "time_on" : "time_off";
                          });
                        },
                        "Time Mode",
                        timeModeIcon,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  "Watering Now",
                  style: GoogleFonts.poppins(
                    color: Colors.lightBlue[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: IconButton.filled(
                    onPressed: () {},
                    iconSize: 48.9,
                    icon: Icon(Icons.water_drop_outlined),
                  ),
                ),
              ],
            ),
          ),
        ],
    );
  }
}
