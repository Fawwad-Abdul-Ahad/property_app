import 'package:flutter/material.dart';
import 'package:property_app/views/represent_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passController = TextEditingController();

    void showErrorDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Login Failed'),
            content: Text('The username or password you entered is incorrect.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
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
                  controller: nameController,
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
                    if (nameController.text == "fawwad098" &&
                        passController.text == "123") {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RepresentScreen()),
                        (Route<dynamic> route) => false,
                      );
                    } else {
                      showErrorDialog(context);
                    }
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
