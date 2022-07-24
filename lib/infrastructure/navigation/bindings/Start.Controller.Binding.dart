import 'package:get/get.dart';
import 'package:morpher_main/Presentation/Screens/Start.Screen/Controllers/Start.Controller.dart';

class StartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StartController());
  }
}
