import 'package:freezed_annotation/freezed_annotation.dart';
part 'workout_days_usecase_response_dto.freezed.dart';
part 'workout_days_usecase_response_dto.g.dart';
@freezed
class WorkoutDaysUseCaseResponseDTO with _$WorkoutDaysUseCaseResponseDTO {
  factory WorkoutDaysUseCaseResponseDTO({
    List<ResponseWorkoutDay>? WorkoutDays,
  }) = _WorkoutDaysUseCaseResponseDTO;

  factory WorkoutDaysUseCaseResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$WorkoutDaysUseCaseResponseDTOFromJson(json);
}

@freezed
class ResponseWorkoutDay with _$ResponseWorkoutDay {
  factory ResponseWorkoutDay({
    String? Id,
    String? DayOfWeek,
    String? DayTitle,
    int? IsRestDay,
    int? LastFinishedRecord,
    List<ResponseWorkoutMove>? Moves,
  }) = _ResponseWorkoutDay;

  factory ResponseWorkoutDay.fromJson(Map<String, dynamic> json) =>
      _$ResponseWorkoutDayFromJson(json);
}

@freezed
class ResponseWorkoutMove with _$ResponseWorkoutMove {
  factory ResponseWorkoutMove({
    String? Id,
    String? Type,
    String? Title,
    List<ResponseWorkoutMove>? Moves,
  }) = _ResponseWorkoutMove;

  factory ResponseWorkoutMove.fromJson(Map<String, dynamic> json) =>
      _$ResponseWorkoutMoveFromJson(json);
}
