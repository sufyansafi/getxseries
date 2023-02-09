import 'package:get/get.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';//

class FvaouriteController extends GetxController {
  RxList<String> fruits = [
    "Mango",
    "orange",
    "banan",
    "kela",
    "naspati",
  ].obs;

  RxList<dynamic> tempfruits = [].obs;

  addToFavourite(String value) {
    tempfruits.add(value);
  }

  removeFromFavourite(String value) {
    tempfruits.remove(value);
  }
}
