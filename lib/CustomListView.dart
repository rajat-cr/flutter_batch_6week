import 'package:flutter/material.dart';
import 'package:flutter_batch_6week/Student.dart';

class Customlistview extends StatefulWidget {
  const Customlistview({super.key});

  @override
  State<Customlistview> createState() => _CustomlistviewState();
}

class _CustomlistviewState extends State<Customlistview> {
  List<Student> nameList = [];
  var nameController = TextEditingController();
  var rolNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom ListView"),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: nameList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(nameList[index].name.toString()),
                  Text(nameList[index].rollNo.toString()),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Add Name"),
                    SizedBox(height: 10),
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hint: Text("Enter Name"),
                        label: Text("Name"),
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(height: 10),
                    TextField(
                      controller: rolNoController,
                      decoration: InputDecoration(
                        hint: Text("Enter RollNo"),
                        label: Text("RollNo"),
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        if (nameController.text.isEmpty) {
                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(SnackBar(content: Text("Enter Name")));
                        } else if (rolNoController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter Roll No")),
                          );
                        } else {
                          setState(() {});
                          nameList.add(
                            Student(
                              nameController.text.toString(),
                              rolNoController.text.toString(),
                            ),
                          );
                          Navigator.of(context).pop();
                        }
                      },
                      child: Text("Save"),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
