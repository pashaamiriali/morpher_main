import 'package:get/get.dart';
import 'package:morpher_main/Presentation/Home/Controllers/Home.Controller.dart';
import 'package:morpher_main/injection_container.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(workoutDaysUseCase: sl()));
  }
}
