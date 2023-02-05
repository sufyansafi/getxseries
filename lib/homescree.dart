import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxseries/getx1.dart';

class Homescreen extends StatefulWidget {
  String name = "";

   Homescreen({super.key ,  required this.name});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get X"+widget.name),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Get.to(Getx1(name: 'flutter developr',));
              },
              child: Text("gO to back screen"))
        ],
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
