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
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Mansi", style: TextStyle(color: Colors.red))],
          ),

          Text("Roll NO: 12402151", style: TextStyle(fontSize: 20)),
          Text(
            "University Name: DAV University",
            style: TextStyle(fontSize: 20),
          ),
          TextButton(
            onPressed: () {
              print("Click Me!");
            },
            child: Text("Click Me!"),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
          OutlinedButton(onPressed: () {}, child: Text("OutLined Button")),

        TextField(
          decoration: InputDecoration(
          
          ),
        )
        ],
      ),
    );
  }
}
