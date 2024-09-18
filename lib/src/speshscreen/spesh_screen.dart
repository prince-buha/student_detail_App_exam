import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../global/Routes.dart';

class speshscreen extends StatefulWidget {
  const speshscreen({super.key});

  @override
  State<speshscreen> createState() => _speshscreenState();
}

class _speshscreenState extends State<speshscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, Routes.Homepage);
    });
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.center,
        child: Text(
          "hii I am prince",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
