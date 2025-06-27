import 'package:flutter/material.dart';
import 'package:flutter_batch_6week/RowClass.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var email = "email@gmail.com";
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text("Forget Password ?")],
            ),

            ElevatedButton(
              onPressed: () {
                if (emailController.text.toString().isEmpty) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Enter Email Id")));
                } else if (passwordController.text.toString().isEmpty) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Enter Password")));
                } else {
                  setState(() {
                    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter Email Id")))
                    // Fluttertoast.showToast(msg: "Enter Your Password");

                    email = emailController.text.toString();
                    print(email);
                  });
                }
              },
              child: Text("Login"),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You don't have an account?"),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                  
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Rowclass(email: "Mansi@gmail.com",)));
                  },
                  child: Text("Sign Up", style: TextStyle(color: Colors.blue)),
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
