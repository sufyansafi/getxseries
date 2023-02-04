import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Getx1 extends StatefulWidget {
  const Getx1({super.key});

  @override
  State<Getx1> createState() => _Getx1State();
}

class _Getx1State extends State<Getx1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get X"),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text("Get X dialog alert"),
            subtitle: const Text("Get X dialog alert"),
            onTap: () {
              Get.defaultDialog(
                title: "delete chat",
                middleText: "Are U sure U wanT to delete the Text?",
                // textCancel: "nO",
                // textConfirm: "Yes",
                // textCustom: "",
                confirm: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text("yes")),
                cancel: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text("No")),
              );
            },
          ),
          ListTile(
            title: Text("Get X Boottom sheet"),
            subtitle: Text("Get X bottom sheet alert"),
            onTap: () {
              Get.bottomSheet(Container(
                color: Colors.limeAccent,
                child: Column(
                  children: [
                    Card(
                      child: ListTile(
                        title: Text("Dark Mode"),
                        leading: Icon(Icons.dark_mode),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Light Mode"),
                        leading: Icon(Icons.light_mode),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                    )
                  ],
                ),
              ));
            },
          ),
        ],
      ),
    );
  }
}
