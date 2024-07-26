import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:property_app/views/login_screen.dart';
import 'package:property_app/views/represent_screen.dart';
import 'package:firebase_core/firebase_core.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();



    registerLogin() async {
      try {
        final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passController.text,
        );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const RepresentScreen()),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
        else{
          print("Error");
        }
      } catch(e) {
        print(e);
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
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Create account",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20),
              Container(
                width: 450,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
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
                  onPressed: () async {
                    await registerLogin();
                  },
                  child: Text(
                    'Signup',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                child: Text(
                  "Already have an account",
                  style: TextStyle(
                      fontSize: 14, color: Color.fromARGB(255, 0, 106, 194)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

