import 'package:file_handeling/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract class Usecase<T, Params> {
  TaskEither<Failure, T> call(Params params);
}
