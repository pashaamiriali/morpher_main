import 'package:get/get.dart';

import '../../../Presentation/Screens/Home.Screen/Controllers/Home.Controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
