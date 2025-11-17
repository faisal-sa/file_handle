import 'package:file_handeling/core/error/failures.dart';
import 'package:file_handeling/features/authentication/domain/entities/user_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract class AuthenticationRepository {
  TaskEither<Failure, UserEntity> getCurrentUser();
  TaskEither<Failure, UserEntity> login(String email, String password);
  TaskEither<Failure, void> signOut();
  TaskEither<Failure, UserEntity> signUp(String email, String password);
}
