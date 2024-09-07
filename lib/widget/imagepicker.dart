// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class ImagePickerPage extends StatefulWidget {
//   @override
//   _ImagePickerPageState createState() => _ImagePickerPageState();
// }

// class _ImagePickerPageState extends State<ImagePickerPage> {
//   String? _imageUrl;

//   Future<void> _pickImage() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.getImage(source: ImageSource.gallery);

//     if (pickedFile != null) {
//       setState(() {
//         _imageUrl = pickedFile.path;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Picker'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _imageUrl != null
//                 ? Image.network(_imageUrl!, width: 300, height: 300)
//                 : Placeholder(
//                     fallbackHeight: 300,
//                     fallbackWidth: 300,
//                   ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _pickImage,
//               child: Text('Pick Image'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
