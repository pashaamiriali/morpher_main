import 'package:either_dart/src/either.dart';
import 'package:morpher_main/Core/DTO/UseCases/WorkoutDaysUseCase/workout_days_usecase_request_dto.dart';
import 'package:morpher_main/Core/DTO/UseCases/WorkoutDaysUseCase/workout_days_usecase_response_dto.dart';
import 'package:morpher_main/Core/Helper/Failure.dart';
import 'package:morpher_main/Core/Interfaces/Repositories/morpher_remote_data_source.dart';
import 'package:morpher_main/Core/Interfaces/Repositories/morpher_repository.dart';

class MorpherRepositoryIMPL implements MorpherRepository{
  final MorpherRemoteDataSource remoteDataSource;

  MorpherRepositoryIMPL({required this.remoteDataSource});
  @override
  Future<Either<Failure, WorkoutDaysUseCaseResponseDTO>>? fetchWorkoutDays({required WorkoutDaysUseCaseRequestDTO requestDTO})async {
    try{
        var result=await remoteDataSource.fetchWorkoutDays(requestDTO: requestDTO);
        return Right(result);
    }on ConnectionFailure{
      return Left(ConnectionFailure());
    }
  }

}