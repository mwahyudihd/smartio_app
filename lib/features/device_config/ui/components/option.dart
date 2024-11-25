import 'package:flutter/material.dart';

class ListComponents {
  String? isTitle;
  String? isIcon;

  ListComponents(this.isTitle, this.isIcon);

  Widget render(setFunct) {
    return ListTile(
      leading: isIcon == "machine"
          ? Icon(Icons.broadcast_on_home_sharp)
          : (isIcon == "exit") ? Icon(Icons.exit_to_app) : (isIcon == "info") ? Icon(Icons.ballot_rounded) : Icon(Icons.timer),
      title: Text("${isTitle}") ,
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: setFunct,
    );
  }
}
