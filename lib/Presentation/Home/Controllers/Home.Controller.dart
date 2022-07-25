import 'package:get/get.dart';
import 'package:morpher_main/Core/DTO/Models/WorkoutDay/workout_day.dart';
import 'package:morpher_main/Core/DTO/UseCases/WorkoutDaysUseCase/workout_days_usecase_request_dto.dart';
import 'package:morpher_main/Core/DTO/UseCases/WorkoutDaysUseCase/workout_days_usecase_response_dto.dart';
import 'package:morpher_main/Core/Interfaces/UseCases/i_workout_days_usecase.dart';

class HomeController extends GetxController {
  final IWorkoutDaysUseCase workoutDaysUseCase;

  HomeController({required this.workoutDaysUseCase});

  final workoutDays = [].obs;

  @override
  void onReady() {
    getWorkoutDays();

    super.onReady();
  }

  getWorkoutDays() {
    workoutDaysUseCase.handle(WorkoutDaysUseCaseRequestDTO()).then((result) =>
        result.fold((left) {
          //TODO: show some error
        }, (right) {
          workoutDays.addAll(getWorkoutDaysFromResponse(right));
          print('d');
          update();
        }));
    // workoutDays.addAll(getWorkoutDays());
    // var wdList = [
    //   WorkoutDay(
    //       dayOfWeek: "SAT",
    //       dayTitle: "Chest Day",
    //       moves: List.generate(12, (index) => WorkoutMove("Bench Press")),
    //       lastFinishedRecord: const Duration(hours: 1, minutes: 45)),
    //   WorkoutDay(
    //       dayOfWeek: "SUN",
    //       dayTitle: "Rest Day",
    //       isRestDay: true,
    //       moves: [],
    //       lastFinishedRecord: const Duration(hours: 0)),
    //   WorkoutDay(
    //       dayOfWeek: "MON",
    //       dayTitle: "Lats & Biceps",
    //       moves: List.generate(12, (index) => WorkoutMove("Bench Press")),
    //       lastFinishedRecord: const Duration(hours: 1, minutes: 45)),
    //   WorkoutDay(
    //       dayOfWeek: "TUE",
    //       dayTitle: "Shoulder & Triceps",
    //       moves: List.generate(12, (index) => WorkoutMove("Bench Press")),
    //       lastFinishedRecord: const Duration(hours: 1, minutes: 45)),
    //   WorkoutDay(
    //       dayOfWeek: "WEN",
    //       dayTitle: "Rest Day",
    //       isRestDay: true,
    //       moves: [],
    //       lastFinishedRecord: const Duration(hours: 0)),
    //   WorkoutDay(
    //       dayOfWeek: "THI",
    //       dayTitle: "Leg Day",
    //       moves: List.generate(12, (index) => WorkoutMove("Bench Press")),
    //       lastFinishedRecord: const Duration(hours: 1, minutes: 45)),
    //   WorkoutDay(
    //       dayOfWeek: "FRI",
    //       dayTitle: "Rest Day",
    //       isRestDay: true,
    //       moves: [],
    //       lastFinishedRecord: const Duration(hours: 0))
    // ];
    // return wdList;
  }

  List<WorkoutDay> getWorkoutDaysFromResponse(
      WorkoutDaysUseCaseResponseDTO response) {
    List<WorkoutDay> days = [];
    for (var day in response.WorkoutDays ?? []) {
      days.add(WorkoutDay(dayOfWeek: day.DayOfWeek ?? "",
          dayTitle: day.DayTitle ?? "",
          moves: getWorkoutMovesFromResponse(day.Moves ?? []),
          lastFinishedRecord: Duration(seconds: day.LastFinishedRecord ?? 0) ),);
    }
    return days;
  }
}

List<WorkoutMove> getWorkoutMovesFromResponse(
    List <ResponseWorkoutMove> responseMoves) {
  List<WorkoutMove> moves = [];
  for (var move in responseMoves){
    moves.add(getWorkoutMoveFromResponse(move));
  }
  return moves;
}

WorkoutMove getWorkoutMoveFromResponse(ResponseWorkoutMove responseMove) {
  if (responseMove.Type != null && responseMove.Type == "SUPER") {
    List<WorkoutMove> normalMoves = getWorkoutMovesFromResponse(responseMove.Moves??[]);
    return SuperSet(responseMove.Title??"",moves: normalMoves);
  }else{
    return WorkoutMove(responseMove.Title??"");
  }
}