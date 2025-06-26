import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen"), backgroundColor: Colors.blue),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Login", style: TextStyle(fontSize: 25))],
            ),

            TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Email",
                label: Text("E-Mail"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Password",
                label: Text("Password"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text("Forget Password ?")],
            ),

            ElevatedButton(onPressed: () {}, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
