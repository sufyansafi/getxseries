import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/instance_manager.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get X"),
      ),
      body: Container(
        width: Get.width,
        color: Colors.redAccent,
        child: Center(child: Text("Kuch b ")),
      ),
    );
  }
}
