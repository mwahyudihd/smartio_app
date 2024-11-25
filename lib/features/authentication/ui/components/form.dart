import 'package:flutter/material.dart';

class InputForm {
  String? hint;
  String? inType;
  InputForm(this.hint, this.inType);

  //karena sudah memiliki atribute jadi tidak perlu menambahkan parameter
  Widget inputForm([bool formLogin = true]) {
    return TextFormField(
      obscureText: inType == 'password' ? true : false,
      keyboardType: inType == 'number'
          ? TextInputType.number
          : inType == 'email'
              ? TextInputType.emailAddress
              : TextInputType.text,
      decoration: InputDecoration(
          hintText: hint,
          border: UnderlineInputBorder(),
          icon: formLogin ? Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: inType == 'password' ? Icon(Icons.lock) : Icon(Icons.email),
          ) : null,
          ),
    );
  }
}

class Margin {
  double? n_X, n_Y;
  Margin(this.n_X, this.n_Y);
  Widget marginTop() {
    return SizedBox(
      height: n_Y,
      width: n_X,
    );
  }
}
