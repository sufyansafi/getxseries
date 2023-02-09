// import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class NotificationController extends GetxController {
  RxBool notification = true.obs;

  setNotification(bool value) {
    // is line ka matlab ha k notifcation ma jo b value ho gi agar vomcahnge hoti ha to ham set notification wala fuc to value provide krengy ex: string ,integer,float,double,bool//
    notification.value = value;
    print(notification.value);
  }
}
