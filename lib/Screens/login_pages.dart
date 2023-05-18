import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: HomePage(),
    );
  }
}

/*
TODO list:
 1. Create the main layout of the app

*/

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LoginScreen(),
    );
  }
}


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
           const Text(
                "Word Wise",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize:42.0,
                  fontWeight: FontWeight.bold,
                ),
            ),
            const Text("Login to the App",
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,

              ),
            ),
            const SizedBox(
              height: 44.0,
            ),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Email required",
                    prefixIcon: Icon(Icons.mail, color:Colors.amberAccent),
              ),
            ),
            const SizedBox(
              height: 26.0,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock, color: Colors.amber,)
              ),
            ),
            const SizedBox(height: 13.0,),
            const Text("Is your password lost in the Matrix?",
                style:TextStyle(color: Colors.deepOrange)
            ),
            const SizedBox(height: 88.0,),
            Container(
              width: double.infinity,
              child: RawMaterialButton(
                fillColor:Color(0xFFFE0026),
                elevation:0.0,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(12.0)),
                onPressed: () {},
                child: Text("LogIn", style: ,),
              ),
            ),
          ],
        ),

    );
  }
}




