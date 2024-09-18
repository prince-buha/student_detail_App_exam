import 'package:flutter/material.dart';

class adddetailpage extends StatefulWidget {
  const adddetailpage({super.key});

  @override
  State<adddetailpage> createState() => _adddetailpageState();
}

class _adddetailpageState extends State<adddetailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: const NetworkImage(
                "https://st3.depositphotos.com/15648834/17930/v/450/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg",
              ),
              radius: 70,
              child: Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  color: Colors.black,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            backgroundColor: Colors.white,
                            title: const Text("Pick Image"),
                            content: Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    const Text("hii");
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Camera",
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Gallery",
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ));
                      },
                    );
                  },
                  icon: const Icon(Icons.add),
                ),
              ),
            ),
            const TextField(
              cursorColor: Colors.black,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                fillColor: Colors.white,
                focusColor: Colors.black,
                border: UnderlineInputBorder(
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
              cursorColor: Colors.black,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Colors.white,
                focusColor: Colors.black,
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                label: Text("Enter Student Grid"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              cursorColor: Colors.black,
              cursorWidth: 2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Colors.white,
                focusColor: Colors.black,
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                label: Text("Enter Student Standard"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
