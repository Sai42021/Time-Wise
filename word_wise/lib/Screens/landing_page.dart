import 'package:flutter/material.dart';
import '../reusable_widgets.dart/landingPage_buttons.dart';
import 'home_screen.dart';
import 'eventcalendar.dart';

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
                'With Time Wise you can easily and conviently create a schedule for your busy day.',
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
                  MaterialPageRoute(builder: (context) => HomeScreen()));
              }),

               const SizedBox(
              height:20
              ),

              Landing_page_buttons(context, false, (){
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => MyHomePage(title: 'blank?',)));
              }),
            ],
          )
        ),
      ),
    );
  }
}