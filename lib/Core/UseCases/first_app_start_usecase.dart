import 'package:either_dart/src/either.dart';
import 'package:morpher_main/Core/DTO/UseCases/WorkoutDaysUseCase/workout_days_usecase_request_dto.dart';
import 'package:morpher_main/Core/DTO/UseCases/WorkoutDaysUseCase/workout_days_usecase_response_dto.dart';
import 'package:morpher_main/Core/Helper/Failure.dart';
import 'package:morpher_main/Core/Interfaces/Repositories/morpher_repository.dart';

import 'package:morpher_main/Core/Interfaces/UseCases/usecase.dart';

class FirstAppStartUseCase
    implements IUseCase<bool, dynamic> {
  final MorpherRepository morpherRepo;

  FirstAppStartUseCase({required this.morpherRepo});
  @override
  Future<Either<Failure, bool>> handle(
      dynamic? params) async {
    return await morpherRepo.checkIsFirstStart();
  }
}
