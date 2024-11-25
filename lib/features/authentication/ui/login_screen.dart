import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final widthMedia = MediaQuery.of(context).size.width;
    final heigthMedia = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 250,
              child: Stack(
                children: [
                  Expanded(
                      child: Positioned(
                          height: heigthMedia - 300,
                          top: -10,
                          width: widthMedia,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/bg-image-2-removebg.png'),
                                  fit: BoxFit.fill),
                            ),
                          ))),
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Margin(8.0, 8.0).marginTop(),
                  Container(
                    child: InputForm('Email', 'email').inputForm(),
                  ),
                  Container(
                    child: TextFormField(
                      obscureText: _obscureText,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: UnderlineInputBorder(),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                          ),
                        ),
                        icon: Icon(Icons.lock)
                      ),
                    ),
                  ),
                  Margin(20, 20).marginTop(),
                  Container(
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            foregroundColor:
                                Colors.white,
                            backgroundColor: Colors.brown[800]),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 20.5,
                            color: Colors.greenAccent[400],
                          ),
                        )),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
