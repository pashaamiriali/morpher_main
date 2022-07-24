import 'package:get/get.dart';
import 'package:morpher_main/DTO/Models/workout_day/workout_day.dart';

class HomeController extends GetxController {
  final workoutDays = [].obs;
  @override
  void onReady() {
    workoutDays.addAll(getWorkoutDays());

    super.onReady();
  }

  List<WorkoutDay> getWorkoutDays() {
    var _workoutDays = [
      WorkoutDay(
          dayOfWeek: "SAT",
          dayTitle: "Chest Day",
          moves: List.generate(12, (index) => WorkoutMove("Bench Press")),
          lastFinishedRecord: const Duration(hours: 1, minutes: 45)),
      WorkoutDay(
          dayOfWeek: "SUN",
          dayTitle: "Rest Day",
          isRestDay: true,
          moves: [],
          lastFinishedRecord: const Duration(hours: 0)),
      WorkoutDay(
          dayOfWeek: "MON",
          dayTitle: "Lats & Biceps",
          moves: List.generate(12, (index) => WorkoutMove("Bench Press")),
          lastFinishedRecord: const Duration(hours: 1, minutes: 45)),
      WorkoutDay(
          dayOfWeek: "TUE",
          dayTitle: "Shoulder & Triceps",
          moves: List.generate(12, (index) => WorkoutMove("Bench Press")),
          lastFinishedRecord: const Duration(hours: 1, minutes: 45)),
      WorkoutDay(
          dayOfWeek: "WEN",
          dayTitle: "Rest Day",
          isRestDay: true,
          moves: [],
          lastFinishedRecord: const Duration(hours: 0)),
      WorkoutDay(
          dayOfWeek: "THI",
          dayTitle: "Leg Day",
          moves: List.generate(12, (index) => WorkoutMove("Bench Press")),
          lastFinishedRecord: const Duration(hours: 1, minutes: 45)),
      WorkoutDay(
          dayOfWeek: "FRI",
          dayTitle: "Rest Day",
          isRestDay: true,
          moves: [],
          lastFinishedRecord: const Duration(hours: 0))
    ];
    return _workoutDays;
  }
}
