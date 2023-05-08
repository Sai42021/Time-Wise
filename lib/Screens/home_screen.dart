import 'package:flutter/material.dart';
import '../reusable_widgets.dart/home_text_fields.dart';
import '../reusable_widgets.dart/submit_button.dart';
import 'landing_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   TextEditingController _dateTextController = TextEditingController();
   TextEditingController _taskTextController = TextEditingController();
   TextEditingController _descriptionTextController = TextEditingController();
   TextEditingController _startTimeTextController = TextEditingController();
   TextEditingController _endTimeTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
      ),

      body: Container(
        decoration: const BoxDecoration(color: Colors.white),

        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
              height:50
              ),
            
              const Text(
                'Lets schedule your day...',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                )
              ),

               const SizedBox(
              height:20
              ),
              
              const Text(
                'Fill in the form below to create a day planner in google sheets.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )
              ),

              const SizedBox(
              height:20
              ),

               HomeTextField("Date", Icons.calendar_today_outlined, false, 
              _dateTextController),

               const SizedBox(
              height:20
              ),

              HomeTextField("Task", Icons.add_circle_outline, false, 
              _taskTextController),

               const SizedBox(
              height:20
              ),

              HomeTextField("Description", Icons.add_circle_outline, false, 
              _descriptionTextController),

              const SizedBox(
              height: 20,
              ),

              HomeTextField("Start time", Icons.access_time, false, 
              _startTimeTextController),

              const SizedBox(
              height: 20,
              ),

              HomeTextField("End time", Icons.access_time, false, 
              _endTimeTextController),

              const SizedBox(
              height: 20,
              ),

              SubmitButton(context, (){
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => LandingPage()));
              }),
            ],
          )
        ),
      ),
    );
  }
}