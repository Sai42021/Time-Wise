import 'package:flutter/material.dart';
import 'package:word_wise/Screens/signup_screen.dart';
import '../reusable_widgets.dart/reusable_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
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
                'Log In',
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
                'To begin scheduling like a pro, sign in with your email and password!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )
              ),

              const SizedBox(
              height:100
              ),

              reusableTextField("Enter Email", Icons.person_outline, false, 
              _emailTextController),

              const SizedBox(
              height: 20,
              ),

              reusableTextField("Enter Password", Icons.lock_outline, true,
              _passwordTextController),

              const SizedBox(
              height: 200,
              ),

              signInSignUpButton(context, true, (){}),
              signUpOption(),

               const SizedBox(
              height: 60,)
            ],
            ) 
          ),
    ),
    );
  }

Row signUpOption() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Don't have an account?",
        style: TextStyle(color: Colors.black)),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => SignUpScreen()));
        },
        child: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
        ),
      )
    ],
    );
}

}