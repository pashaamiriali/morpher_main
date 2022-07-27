import 'package:get/get.dart';
import 'package:morpher_main/Presentation/Exercise/Controllers/Exercise.Controller.dart';

class ExerciseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExerciseController());
  }
}
