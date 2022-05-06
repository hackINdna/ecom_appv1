import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecom_appv1/pages/mainMenuPage.dart';


class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  String name = '';
  bool shapeChanged = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 30.0),
            Image.asset('assets/image/login.png'),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                'Welcome $name',
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
                validator: (value){
                  if(value!.isEmpty)
                  {
                    return "Username cannot be Empty";
                  }
                  else
                  {
                    return null;
                  }
                },
                onChanged: (value){
                  name = value;
                  setState((){});
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: 'Password', 
                ),
                validator: (value){
                  if(value!.isEmpty)
                  {
                    return "Password cannot be Empty.";
                  }
                  else if(value.length < 6){
                    return "Password length should be atlease 6";
                  }
                  else{
                    return null;
                  }
                },
                obscureText: true,
              ),
              SizedBox(
                height: 30.0,
              ),
              Material(
                borderRadius: BorderRadius.circular(shapeChanged ? 50 : 8),
                color: Colors.orange,
                child: InkWell(
                  onTap: () async{
                    if(_formKey.currentState!.validate()){
                      setState((){
                        shapeChanged = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      await Navigator.pushNamed(context, MainMenu.routeName);
                      setState((){
                        shapeChanged = false;
                      });
                    } 
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: shapeChanged ? 50 : 150,
                    height: 50,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(shapeChanged ? 50 : 8),
                    //   //shape: shapeChanged ? BoxShape.circle : BoxShape.rectangle,
                    //   color: Colors.orange,
                    // ),
                    alignment: Alignment.center,
                    child: shapeChanged ? Icon(
                      Icons.done,
                      color: Colors.white,
                      size: 35.0,
                    ) : Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              // ElevatedButton(
              //   onPressed: (){
              //     Navigator.pushReplacementNamed(context, MainMenu.routeName);
              //   },
              //   child: Text(
              //     'Login',
              //     style: TextStyle(
              //       fontSize: 17.0
              //     ),
              //   ),
              //   style: ElevatedButton.styleFrom(
              //     primary: Colors.orange,
              //     minimumSize: Size(150, 40),
              //     elevation: 3.0
              //   ),
              // ),
              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}