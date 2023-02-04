import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get X"),
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton.small(onPressed: () {
        Get.snackbar("Safi", "Going to abraod", onTap: (snack) {
          Text("Button");
        });
        Icon(Icons.add);
      }),
    );
  }
}
