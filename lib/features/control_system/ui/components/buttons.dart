import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons {
  Widget toggle(valData, doSome) {
    return Switch(value: valData, onChanged: doSome);
  }

  Widget listToggle(valData, doSome, titleVal, iconType) {
    return SwitchListTile(
      value: valData,
      onChanged: doSome,
      title: Text(titleVal, style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.brown
              )),
      secondary: (iconType == "time_on")
          ? Icon(Icons.timer_rounded)
          : (iconType == "time_off")
              ? Icon(Icons.timer_outlined)
              : (iconType == "temp_on")
                  ? Icon(Icons.thermostat_auto)
                  : (iconType == "temp_off")
                      ? Icon(Icons.thermostat)
                      : Icon(Icons.list),
    );
  }
}

class Margin {
  double? x;
  double? y;
  Margin(this.x, this.y);
  Widget render() {
    return SizedBox(width: x, height: y);
  }
}
