import 'package:either_dart/either.dart';
import 'package:morpher_main/Core/Helper/Failure.dart';

abstract class IUseCase<Type, Params>{
  Future<Either<Failure, Type>> handle(Params params);
}