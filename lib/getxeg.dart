// import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class GetxExample extends GetxController {
  RxDouble opacity = .4.obs;

  opacityset(double value) {
    opacity.value = value;
  }

 
}
