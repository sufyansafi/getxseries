import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:getxseries/favouritegetxexample.dart';
import 'package:getxseries/imagepickerwithgetx.dart';
// import 'package:getxseries/countercont.dart'
// import 'package:getxseries/getxeg.dart';
import 'package:getxseries/notifucationgetxcontroller.dart';

class Deafault extends StatefulWidget {
  const Deafault({super.key});

  @override
  State<Deafault> createState() => _DeafaultState();
}

class _DeafaultState extends State<Deafault> {
  // final CounterController controller = Get.put(CounterController());
  //
  // final GetxExample controller = Get.put(GetxExample());
  // NotificationController notificationController =
  //     Get.put(NotificationController());
  // FvaouriteController fvaouriteController = Get.put(FvaouriteController());

  ImagePickerWithGetController imagePickerWithGetController =
      Get.put(ImagePickerWithGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Deafult App"),
        ),
        body: Obx(() {
          return Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: imagePickerWithGetController
                          .imagepath.isNotEmpty
                      ? FileImage(File(
                          imagePickerWithGetController.imagepath.toString()))
                      : null,
                ),
              ),
              FloatingActionButton.small(
                onPressed: () {
                  imagePickerWithGetController.getImage();
                },
                child: Text("Pick Image"),
              )
            ],
          );
        })
        // ListView.builder(
        //     itemCount: fvaouriteController.fruits.length,
        //     itemBuilder: (context, index) {
        //       return Card(
        //         child: ListTile(
        //             onTap: () {
        //               if (fvaouriteController.tempfruits.contains(
        //                   fvaouriteController.fruits[index].toString())) {
        //                 fvaouriteController.removeFromFavourite(
        //                     fvaouriteController.fruits[index].toString());
        //               } else {
        //                 fvaouriteController.addToFavourite(
        //                     fvaouriteController.fruits[index].toString());
        //               }
        //             },
        //             title: Text(fvaouriteController.fruits[index].toString()),
        //             leading: Obx(() {
        //               return Icon(
        //                 Icons.favorite,
        //                 color: fvaouriteController.tempfruits.contains(
        //                         fvaouriteController.fruits[index].toString())
        //                     ? Colors.red
        //                     : Colors.black,
        //               );
        //             })),
        //       );
        //     }),
        );
  }
}
