import 'package:get_it/get_it.dart';
import 'package:morpher_main/Core/Interfaces/Repositories/morpher_remote_data_source.dart';
import 'package:morpher_main/Core/Interfaces/Repositories/morpher_repository.dart';
import 'package:morpher_main/Core/Interfaces/UseCases/i_workout_days_usecase.dart';
import 'package:morpher_main/Infrastructure/DataSources/fake_morpher_remote_data_source.dart';

import 'Core/UseCases/workout_days_usecase.dart';
import 'Infrastructure/Repositories/MorpherRepositoryIMPL.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<IWorkoutDaysUseCase>(
    () => WorkoutDaysUseCase(
      morpherRepo: sl(),
    ),
  );
  sl.registerLazySingleton<MorpherRepository>(
    () => MorpherRepositoryIMPL(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<MorpherRemoteDataSource>(
    () => FakeMorpherRemoteDataSource(),
  );
}
