import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:morpher_main/Core/DTO/UseCases/WorkoutDaysUseCase/workout_days_usecase_request_dto.dart';
import 'package:morpher_main/Core/DTO/UseCases/WorkoutDaysUseCase/workout_days_usecase_response_dto.dart';
import 'package:morpher_main/Core/Helper/Failure.dart';
import 'package:morpher_main/Core/Interfaces/Repositories/morpher_remote_data_source.dart';

class FakeMorpherRemoteDataSource implements MorpherRemoteDataSource{
  @override
  Future<WorkoutDaysUseCaseResponseDTO> fetchWorkoutDays({required WorkoutDaysUseCaseRequestDTO requestDTO})async {
    try{
      var data=json.decode(await rootBundle.loadString("assets/fake_responses/workout_days.json"));
      return WorkoutDaysUseCaseResponseDTO.fromJson(data['Content']);
    }on Exception {
      throw ConnectionFailure();
    }
  }
  
}