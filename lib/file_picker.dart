import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:file_picker/file_picker.dart';

class fpScreen extends StatefulWidget {
  const fpScreen({super.key});

  @override
  State<fpScreen> createState() => _fpScreenState();
}

class _fpScreenState extends State<fpScreen> {
  FilePickerResult? result;
  String? _fileName;
  PlatformFile? pickedfile;
  bool isloading = false;
  File? fileToDisplay;

  void pickFile() async {
    try {
      setState(() {
        isloading = true;
      });
      result = await FilePicker.platform
          .pickFiles(type: FileType.media, allowMultiple: false);

      if (result != null) {
        _fileName = result!.files.first.name;
        pickedfile = result!.files.first;
        fileToDisplay = File(pickedfile!.path.toString());
        print("file name:$_fileName");
      }

      setState(() {
        isloading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isloading
              ? CircularProgressIndicator()
              : TextButton(
                  onPressed: () {
                    pickFile();
                  },
                  child: Text("Pick File")),
          if (pickedfile != null)
            SizedBox(
              height: 300,
              width: 400,
              child: Image.file(fileToDisplay!),
            ),
          Text(
            "ALINAN VERİLER",
            style: TextStyle(fontSize: 19),
          ),
          SizedBox(
            height: 15,
          ),
          Text(_fileName.toString()),
          SizedBox(
            height: 15,
          ),
          Text(pickedfile.toString()),
        ],
      )),
    );
  }
}
