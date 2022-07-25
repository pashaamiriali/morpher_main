import 'package:get/get.dart';
import 'package:morpher_main/Core/dto/models/WorkoutDay/workout_day.dart';

class StartController extends GetxController {
  final workoutDay = WorkoutDay(
          dayOfWeek: '',
          dayTitle: '',
          moves: [],
          lastFinishedRecord: const Duration())
      .obs;
  @override
  void onReady() {
    workoutDay.update((val) {
      var newWorkoutDay = getWorkoutDay();
      val?.dayOfWeek = newWorkoutDay.dayOfWeek;
      val?.dayTitle = newWorkoutDay.dayTitle;
      val?.isRestDay = newWorkoutDay.isRestDay;
      val?.lastFinishedRecord = newWorkoutDay.lastFinishedRecord;
      val?.moves = newWorkoutDay.moves;
    });
    super.onReady();
  }

  WorkoutDay getWorkoutDay() {
    var moves = [
      WorkoutMove("Dumbbell upper chest 3x12"),
      WorkoutMove("Barbell upper chest 3x12"),
      WorkoutMove("Dumbbell fly 3x12"),
      WorkoutMove("Dumbbell hammer press 3x12"),
      WorkoutMove("Barbell chest press 4x12"),
      WorkoutMove("Dumbbell chest press 2x12"),
      SuperSet("Chest Super set 75% weight", moves: [
        WorkoutMove("Dumbbell chest press "),
        WorkoutMove("Barbell chest press"),
      ]),
      WorkoutMove("Decline barbell press 3x12"),
      SuperSet("Lower Chest super set", moves: [
        WorkoutMove("Dips"),
      ]),
      WorkoutMove("Single arm decline cable press 3x40"),
    ];
    return WorkoutDay(
        dayOfWeek: "SAT",
        dayTitle: "Chest Day",
        moves: moves,
        lastFinishedRecord: const Duration(hours: 1, minutes: 45));
  }
}
