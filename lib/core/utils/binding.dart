import 'package:get/get.dart';
import 'package:pixabay/ui/image_screen/controller/image_list_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImageListController>(() => ImageListController(), fenix: true);
  }
}
