import 'package:fbase_login/profile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/cupertino.dart';

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


/*TODO list:
 1. Create the main layout of the app
 2. Connect/Log In to firebase(console)
 2.1 Create a new project
 2.2 Edit build gradle files, add Firebase Dependencies(pubsec.yaml)
 3. login function [70], create a new user on firebase auth
 4. run the app, input the user data and see results
*/

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //Initialize Firebase App
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
          future: _initializeFirebase(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return LoginScreen();
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
    );
  }
}


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Login function
  static Future<User?> loginUsingEmailPassword({required String email, required String password, required BuildContext context}) async{
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
   try {
    UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
    user = userCredential.user;
   } on FirebaseAuthException catch (e){
     if(e.code == "user-not-found"){
      print("User email non existent");
    }
   }

   return user;
  }



  @override
  Widget build(BuildContext context) {
    //create the textfiled controller
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
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
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Email required",
                    prefixIcon: Icon(Icons.mail, color:Colors.amberAccent),
              ),
            ),
            const SizedBox(
              height: 26.0,
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
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
                fillColor: const Color(0xFF196581),
                elevation:0.0,
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(12.0)),
                onPressed: () async {
                  //testing the app
                  User? user = await loginUsingEmailPassword(email: _emailController.text, password: _passwordController.text, context: context);
                  print(user);
                  if(user != null){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> ProfileScreen()));

                  }

                },
                child: const Text("Log In",
                  style: TextStyle(
                      color: Colors.white,
                    fontSize: 22.0,
                  )),
              ),
            ),
          ],
        ),

    );
  }
}




