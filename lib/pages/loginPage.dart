import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecom_appv1/pages/mainMenuPage.dart';


class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 30.0),
          Image.asset('assets/image/login.png'),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              'Welcome',
              style: GoogleFonts.merriweather(
                fontSize: 30.0,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 30.0,
            ),
            child: Column(
              children: [
                TextFormField(
              decoration: InputDecoration(
                hintText: "Username",
                labelText: 'Username', 
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Password",
                labelText: 'Password', 
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, MainMenu.routeName);
              },
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 17.0
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(150, 40),
                elevation: 3.0
              ),
            ),
            ],
            ),
          ),
        ],
      ),
    );
  }
}