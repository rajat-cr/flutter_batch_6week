import 'package:flutter/material.dart';

class Rowclass extends StatefulWidget {
  String email;
  Rowclass({required this.email, super.key});

  @override
  State<Rowclass> createState() => _RowclassState();
}

class _RowclassState extends State<Rowclass> {
  @override
  void initState() {
    super.initState();
    print("Email Id: ${widget.email.toString()}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row"), backgroundColor: Colors.purple),

      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: Row(
          children: [
            Text("Mansi", style: TextStyle(fontSize: 25)),
            SizedBox(width: 10),
            Text("Row Data", style: TextStyle(fontSize: 25)),
            SizedBox(width: 10),
            Text("Mansi", style: TextStyle(fontSize: 25)),
            SizedBox(width: 10),
            Text("Row Data", style: TextStyle(fontSize: 25)),
            SizedBox(width: 10),
            Text("Mansi", style: TextStyle(fontSize: 25)),
            SizedBox(width: 10),
            Text("Row Data", style: TextStyle(fontSize: 25)),
            
          ],
        ),
      ),
    );
  }
}
