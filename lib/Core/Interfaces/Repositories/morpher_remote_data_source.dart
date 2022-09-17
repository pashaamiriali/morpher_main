import 'package:morpher_main/Core/DTO/UseCases/WorkoutDaysUseCase/workout_days_usecase_request_dto.dart';
import 'package:morpher_main/Core/DTO/UseCases/WorkoutDaysUseCase/workout_days_usecase_response_dto.dart';

abstract class MorpherRemoteDataSource {
  Future<WorkoutDaysUseCaseResponseDTO> fetchWorkoutDays(
      {required WorkoutDaysUseCaseRequestDTO requestDTO});
  Future<bool> isAppFirstStart();
}
