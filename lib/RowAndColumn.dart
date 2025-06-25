import 'package:flutter/material.dart';

class Rowandcolumn extends StatefulWidget {
  const Rowandcolumn({super.key});

  @override
  State<Rowandcolumn> createState() => _RowandcolumnState();
}

class _RowandcolumnState extends State<Rowandcolumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: Text("Column")),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Mansi", style: TextStyle(color: Colors.red)),
            Text("Roll NO: 12402151", style: TextStyle(fontSize: 20)),
            Text(
              "University Name: DAV University",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
