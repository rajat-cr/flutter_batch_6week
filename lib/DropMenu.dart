import 'package:flutter/material.dart';

class Dropmenu extends StatefulWidget {
  const Dropmenu({super.key});

  @override
  State<Dropmenu> createState() => _DropmenuState();
}

class _DropmenuState extends State<Dropmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DropdownButton<String>(
        
        items: items, onChanged: onChanged),
    );
  }
}