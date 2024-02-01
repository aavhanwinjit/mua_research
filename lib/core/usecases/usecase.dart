import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {
  List<Object> get props => [];
}
