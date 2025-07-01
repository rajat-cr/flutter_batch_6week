import 'package:flutter/material.dart';
import 'package:flutter_batch_6week/RowClass.dart';
import 'package:flutter_batch_6week/login_screen.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var email = "email@gmail.com";
  var nameFocus = FocusNode();
  var emailFocus = FocusNode();
  var passFocus = FocusNode();
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
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              controller: nameController,
              focusNode: nameFocus,
              decoration: InputDecoration(
                hintText: "Enter Your Name",
                label: Text("Name"),
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              controller: emailController,
              focusNode: emailFocus,
              decoration: InputDecoration(
                hintText: "Enter Your Email",
                label: Text("E-Mail"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              focusNode: passFocus,
              decoration: InputDecoration(
                hintText: "Enter Your Password",
                label: Text("Password"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                if (nameController.text.toString().isEmpty) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Enter Name")));
                }
                if (emailController.text.toString().isEmpty) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Enter Email Id")));
                } else if (passwordController.text.toString().isEmpty) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Enter Password")));
                } else if (passwordController.text.toString().length < 6) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Enter at least 6 digit for Password"),
                    ),
                  );
                } else {
                  setState(() {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("SignUp SuccessFully")));
                    // Fluttertoast.showToast(msg: "Enter Your Password");
                  });
                }
              },
              child: Text("Sign Up"),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You already have an account?"),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            LoginScreen(),
                      ),
                    );
                  },
                  child: Text("Login", style: TextStyle(color: Colors.blue)),
                ),

                // TextButton(
                //   onPressed: () {},
                //   child: Text("Sign Up", style: TextStyle(color: Colors.blue)),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
