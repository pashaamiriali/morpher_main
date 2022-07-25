import 'package:either_dart/either.dart';
import 'package:morpher_main/Core/DTO/UseCases/WorkoutDaysUseCase/workout_days_usecase_request_dto.dart';
import 'package:morpher_main/Core/DTO/UseCases/WorkoutDaysUseCase/workout_days_usecase_response_dto.dart';
import 'package:morpher_main/Core/Helper/Failure.dart';
abstract class MorpherRepository{
  Future<Either<Failure,WorkoutDaysUseCaseResponseDTO>>? fetchWorkoutDays({required WorkoutDaysUseCaseRequestDTO requestDTO});
}