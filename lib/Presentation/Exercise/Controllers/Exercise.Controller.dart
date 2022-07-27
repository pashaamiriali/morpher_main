import 'package:get/get.dart';

class ExerciseController extends GetxController {
  var isResting = false.obs;

  void setIsResting(bool newIsResting) {
    isResting.update((val) {
      isResting.value = newIsResting;
    });
    update();
  }
}
