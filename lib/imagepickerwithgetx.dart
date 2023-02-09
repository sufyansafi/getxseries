import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:image_picker/image_picker.dart';

// ignore: camel_case_types
class ImagePickerWithGetController extends GetxController {
  RxString imagepath = "".obs;

  Future getImage() async {
    final ImagePicker picker = ImagePicker();

    final image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      imagepath.value = image.path.toString();
    }
  }
}
