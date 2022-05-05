import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 60.0),
          Image.asset('assets/image/login.png'),
          Center(
            child: Text(
              'Welcome',
              style: GoogleFonts.merriweather(
                fontSize: 30.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}