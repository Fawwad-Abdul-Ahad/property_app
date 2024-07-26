import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:property_app/views/represent_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();

    signin() async {
      try {
        final credential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passController.text,
        );
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const RepresentScreen()),
          (Route<dynamic> route) => false,
        );
      } on FirebaseAuthException catch (e) {
        String errorMessage = '';
        if (e.code == 'user-not-found') {
          errorMessage = 'No user found for that email.';
        } else if (e.code == 'wrong-password') {
          errorMessage ='Wrong password provided for that user.';
        }
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Please enter coreect email or password'),
              content: Text(errorMessage),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    }

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: const Color.fromARGB(255, 0, 39, 71),
                ), // Add your image URL here
              ),
              SizedBox(height: 20),
              Text(
                "Login to your Account",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20),
              Container(
                width: 450,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    icon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 450,
                child: TextField(
                  controller: passController,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      icon: Icon(Icons.password_outlined)),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.remember_me,
                      size: 18,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Remember me",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 0, 112, 204)),
                  ),
                  onPressed: () {
                    signin(); 
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Forgot the password?",
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 0, 106, 194)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
