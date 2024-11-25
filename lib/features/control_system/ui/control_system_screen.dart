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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          child: Column(
            children: [
              Margin(8.0, 30).render(),
              Text(
                "Watering Mode:",
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown),
              ),
              Margin(8.0, 80).render(),
              Container(
                padding: EdgeInsets.all(15.0), // Padding di dalam container
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 83, 230, 88), width: 2), // Border
                  borderRadius: BorderRadius.circular(
                      10), // Border radius untuk sudut melengkung
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 83, 230, 88)
                          .withOpacity(0.1), // Warna shadow dengan opacity
                      spreadRadius: 2, // Penyebaran shadow
                      blurRadius: 5, // Blur radius shadow
                      offset: Offset(0, 2), // Posisi shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Button 1
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
                    // Margin antar button
                    Margin(8.0, 20).render(),
                    // Button 2
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
              Margin(10, 100.10).render(),
              Text("Watering Now", style: GoogleFonts.poppins(
                color: Colors.lightBlue[700],
                fontWeight: FontWeight.bold,
                fontSize: 12
              ),),
              Margin(1, 10.5).render(),
              Center(
                child: IconButton.filled(
                    onPressed: (){},
                    iconSize: 48.9,
                    icon: Icon(Icons.water_drop_outlined)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
