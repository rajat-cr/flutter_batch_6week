import 'package:flutter/material.dart';
import 'package:flutter_batch_6week/Assignment.dart';
import 'package:flutter_batch_6week/CustomListView.dart';
import 'package:flutter_batch_6week/DialogScreen.dart';
import 'package:flutter_batch_6week/DropMenu.dart';
import 'package:flutter_batch_6week/FirstScreen.dart';
import 'package:flutter_batch_6week/ListScreen.dart';
import 'package:flutter_batch_6week/RowAndColumn.dart';
import 'package:flutter_batch_6week/RowClass.dart';
import 'package:flutter_batch_6week/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Dropmenu());
  }
}
