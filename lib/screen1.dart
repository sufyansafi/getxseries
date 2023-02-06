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
        centerTitle: true,
      ),
      // body: Container(
      //   width: Get.width,
      //   color: Colors.redAccent,
      //   child: Center(child: Text("Kuch b ")),
      // ),
      body: Column(
        children: [
          ListTile(
            title: Text("message".tr),
            subtitle: Text("name".tr),
          ),
          const SizedBox(
            height: 50,
            width: 50,
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale("en", "Us"));
                  },
                  child: const Text("English")),
              const SizedBox(
                height: 50,
                width: 50,
              ),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale("ur", "Pk"));
                  },
                  child: const Text("Urdu")),
            ],
          )
        ],
      ),
    );
  }
}
