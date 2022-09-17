import 'package:either_dart/src/either.dart';
import 'package:morpher_main/Core/DTO/UseCases/WorkoutDaysUseCase/workout_days_usecase_request_dto.dart';
import 'package:morpher_main/Core/DTO/UseCases/WorkoutDaysUseCase/workout_days_usecase_response_dto.dart';
import 'package:morpher_main/Core/Helper/Failure.dart';
import 'package:morpher_main/Core/Interfaces/Repositories/morpher_repository.dart';

import 'package:morpher_main/Core/Interfaces/UseCases/usecase.dart';

class WorkoutDaysUseCase implements IUseCase<WorkoutDaysUseCaseResponseDTO,WorkoutDaysUseCaseRequestDTO>{
  final MorpherRepository morpherRepo ;

  WorkoutDaysUseCase({required this.morpherRepo});
  @override
  Future<Either<Failure, WorkoutDaysUseCaseResponseDTO>> handle(WorkoutDaysUseCaseRequestDTO? params) async {
    return await morpherRepo.fetchWorkoutDays(requestDTO: params!)!;
  }

}