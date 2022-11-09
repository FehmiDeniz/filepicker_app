// import 'dart:convert';
// import 'dart:io';

// import 'package:file_picker/file_picker.dart';
// import 'package:filepicker_app/sqflite/DBHelper.dart';
// import 'package:filepicker_app/sqflite/Utility.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:image_picker/image_picker.dart';
// import '../sqflite/photo.dart';
// import '../sqflite/DBHelper.dart';

// import 'dart:async';

// class fpScreen extends StatefulWidget {
//   const fpScreen({super.key});

//   @override
//   State<fpScreen> createState() => _fpScreenState();
// }

// class _fpScreenState extends State<fpScreen> {
//   // FilePickerResult? result;
//   // String? _fileName;
//   // PlatformFile? pickedfile;
//   bool isloading = false;
//   // File? fileToDisplay;

//   // pickImage() async {
//   //   ImagePicker.platform
//   //       .pickImage(source: ImageSource.gallery)
//   //       .then((value) => null);
//   // }

//   late Future<File> imageFile;
//   late Image image;
//   late DBHelper dbHelper;
//   late List<Photo> images;

//   @override
//   void initState() {
//     images = [];
//     dbHelper = DBHelper();
//     super.initState();
//   }

//   dynamic imgFile;

//   pickImageFromGallery() {
//     ImagePicker.platform
//         .pickImage(source: ImageSource.gallery)
//         .then((imgFile) => imgFile);
//     String imgString = Utility.base64String(imgFile.readAsBytes);
//     Photo photo = Photo(0, imgString);
//     dbHelper = DBHelper();
//   }

//   gridView() {
//     return Padding(
//       padding: EdgeInsets.all(5.0),
//       child: GridView.count(
//         crossAxisCount: 2,
//         childAspectRatio: 1.0,
//         mainAxisSpacing: 4.0,
//         crossAxisSpacing: 4.0,
//         children: images.map((photo) {
//           return Utility.imageFromBase64String(photo.photo_name);
//         }).toList(),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           isloading
//               ? CircularProgressIndicator()
//               : TextButton(
//                   onPressed: () {
//                     (pickImageFromGallery());
//                   },
//                   child: Text("Pick File")),
//           SizedBox(
//             height: 300,
//             width: 400,
//             child: gridView(),
//           ),
//         ],
//       )),
//     );
//   }
// }

// /*gridView() {
// return Padding(
// padding: EdgeInsets.all(5.0),
// child: GridView.count(
// crossAxisCount: 2,
// childAspectRatio: 1.0,
// mainAxisSpacing: 4.0,
// crossAxisSpacing: 4.0,
// children: images.map((photo) {
// return Utility.imageFromBase64String(photo.photoName);
// }).toList(),
// ),
// );
// } */

// /* isloading
//               ? CircularProgressIndicator()
//               : TextButton(
//                   onPressed: () {
//                     pickFile();
//                   },
//                   child: Text("Pick File")),
//           if (pickedfile != null)
//             SizedBox(
//               height: 300,
//               width: 400,
//               child: Image.file(fileToDisplay!),
//             ), */
