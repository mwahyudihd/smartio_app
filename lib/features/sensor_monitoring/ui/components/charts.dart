import 'package:flutter/material.dart';

class Margin {
  double? x;
  double? y;
  Margin(this.x, this.y);
  Widget render() {
    return SizedBox(
      height: y,
      width: x,
    );
  }
}
