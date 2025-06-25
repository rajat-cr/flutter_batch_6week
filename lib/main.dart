import 'package:flutter/material.dart';
import 'package:flutter_batch_6week/FirstScreen.dart';
import 'package:flutter_batch_6week/RowAndColumn.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Rowandcolumn());
  }
}
