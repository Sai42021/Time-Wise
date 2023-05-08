import 'package:flutter/material.dart';
import 'package:word_wise/Screens/signin_screen.dart';

import '../reusable_widgets.dart/reusable_widget.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _firstNameTextController = TextEditingController();
  TextEditingController _lastNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),

        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
              height:50
              ),
            
              const Text(
                'Create an account',
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
                'Fill in the form below for you to open an account with us...',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )
              ),

              const SizedBox(
              height:20
              ),

               reusableTextField("First name", Icons.person_outline, false, 
              _firstNameTextController),

               const SizedBox(
              height:20
              ),

              reusableTextField("Last name", Icons.person_outline, false, 
              _lastNameTextController),

               const SizedBox(
              height:20
              ),

              reusableTextField("Email", Icons.person_outline, false, 
              _emailTextController),

              const SizedBox(
              height: 20,
              ),

              reusableTextField("Password", Icons.lock_outline, true,
              _passwordTextController),

              const SizedBox(
              height: 150,
              ),

              signInSignUpButton(context, false, (){
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => HomeScreen()));
              }),
              signInOption(),

               const SizedBox(
              height: 50,
              ),
            ],
            ) 
          ),
    ),     
    );
  }

Row signInOption() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Already have an account?",
        style: TextStyle(color: Colors.black)),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => SignInScreen()));
        },
        child: const Text(
          "Log In",
          style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
        ),
      )
    ],
    );
}

}