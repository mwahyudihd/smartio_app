import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/form.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  Widget build(BuildContext context) {
    double widthMedia = MediaQuery.of(context).size.width;
    double heightMedia = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: heightMedia,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250,
                child: Stack(
                  children: [
                    Positioned(
                      height: heightMedia - 300,
                      top: -10,
                      width: widthMedia,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/bg-image-2-removebg.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
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
                        'Register',
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Margin(8.0, 8.0).marginTop(),
                      Container(
                        child: InputForm('Email', 'email').inputForm(false),
                      ),
                      Container(
                        child: InputForm('username', 'text').inputForm(false),
                      ),
                      Container(
                        child: PasswordField(
                          passwordDecoration: PasswordDecoration(),
                          passwordConstraint: r'.*[@$#.*].*',
                        ),
                      ),
                      Margin(10, 20.0).marginTop(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.brown[800],
                            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                          ),
                          child: Text(
                            'Back',
                            style: TextStyle(
                              fontSize: 20.5,
                              color: Colors.greenAccent[400],
                            ),
                          ),
                        ),
                        Margin(15, 5).marginTop(),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.brown[800],
                            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                          ),                          
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              fontSize: 20.5,
                              color: Colors.greenAccent[400],
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
