import 'package:flutter/material.dart';
import 'package:word_wise/Screens/signin_screen.dart';
import 'package:word_wise/Screens/signup_screen.dart';
import '../reusable_widgets.dart/landingPage_buttons.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
               const SizedBox(
              height:50
              ),

              const Text(
                'Time Wise',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                )
              ),

              const SizedBox(
              height:20
              ),

              const Text(
                'With Time Wise you can easily and conviently create a schedule for your busy day. Sign in to begin, or create an account if you do not already have one.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )
              ),

              const SizedBox(
              height:20
              ),

              const Icon(
                Icons.android,
                size:100,
                color: Colors.white,
              ),

              const SizedBox(
              height:150
              ),

               Landing_page_buttons(context, true, (){
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => SignInScreen()));
              }),

               const SizedBox(
              height:20
              ),

              Landing_page_buttons(context, false, (){
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => SignUpScreen()));
              }),
            ],
          )
        ),
      ),
    );
  }
}