import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
// import 'package:getxseries/getx1.dart';

class CounterController extends GetxController {
  RxInt count = 1122.obs;

  increamentcount() {
    count.value++;
    // ignore: avoid_print
    print(count.value);
  }
}
