import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

File? image;

class AddDetailPage extends StatefulWidget {
  const AddDetailPage({super.key});

  @override
  State<AddDetailPage> createState() => _AddDetailPageState();
}

class _AddDetailPageState extends State<AddDetailPage> {
  ImagePicker picker = ImagePicker();

  Future<void> pickImage({required ImageSource source}) async {
    XFile? xFile = await picker.pickImage(
      source: source,
    );
    if (xFile != null) {
      image = File(xFile.path);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text(
          "Add Student Detail",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.add_box_outlined,
            size: 30,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: (image != null)
                          ? FileImage(image!)
                          : const NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb2F1sRrmj0rFgZyVmC8yBgXxyccFRJf7LPQ&s")
                              as ImageProvider,
                    ),
                    FloatingActionButton.small(
                      backgroundColor: Colors.white,
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text("Pick Image"),
                            titleTextStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                            backgroundColor: Colors.white,
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton.icon(
                                  onPressed: () {
                                    pickImage(source: ImageSource.camera);
                                    setState(() {});
                                    Navigator.pop(context);
                                  },
                                  label: const Text(
                                    "Camera",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  icon: Icon(
                                    Icons.camera_alt_outlined,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ),
                                ElevatedButton.icon(
                                  onPressed: () {
                                    pickImage(source: ImageSource.gallery);
                                    setState(() {});
                                    Navigator.pop(context);
                                  },
                                  label: const Text(
                                    "Gallary",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  icon: const Icon(
                                    Icons.photo_sharp,
                                    color: Colors.lightBlue,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      splashColor: Colors.white,
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
            ),
            const TextField(
              cursorColor: Colors.black,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                fillColor: Colors.white,
                focusColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                label: Text("Enter Student Name"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              maxLength: 4,
              cursorColor: Colors.black,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Colors.white,
                focusColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                label: Text("Enter Student Grid"),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const TextField(
              maxLength: 2,
              cursorColor: Colors.black,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Colors.white,
                focusColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                label: Text("Enter Student std"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
