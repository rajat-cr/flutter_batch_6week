import 'package:flutter/material.dart';

class Dropmenu extends StatefulWidget {
  const Dropmenu({super.key});

  @override
  State<Dropmenu> createState() => _DropmenuState();
}

class _DropmenuState extends State<Dropmenu> {
  var list = ["Mansi", "Rajat", "Simran", "Vinay"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drop Menu"), backgroundColor: Colors.purple),
      body: Column(
        children: [
          Center(
            child: DropdownMenu(
              width: double.infinity,
              hintText: "Select value",
              label: Text("Select Value"),
              enableSearch: true,
              onSelected: (value) {
                print("Selected Value is: $value");
              },

              dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((
                String name,
              ) {
                return DropdownMenuEntry(value: name, label: name.toString());
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(5),
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),

              child: Column(
                children: [
                  Text(
                    "Hello Rajat Guleria, How are you, Im fine what about you?",
                  ),
                  Image.asset(
                    "assets/images/camera.jpeg",
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: 400,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
