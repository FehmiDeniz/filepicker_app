import 'package:filepicker_app/File%20Picker/file_picker.dart';
import 'package:filepicker_app/sqflite/SaveImageDemo.dart';
import 'package:filepicker_app/sqflite/SaveImageDemoSqLite.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SaveImageDemoSQLite(),
    );
  }
}
