import 'package:file_handeling/core/error/failures.dart';
import 'package:file_handeling/core/usecase/no_params.dart';
import 'package:file_handeling/core/usecase/usecase.dart';
import 'package:file_handeling/features/authentication/domain/entities/user_entity.dart';
import 'package:file_handeling/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetCurrentUserUsecase implements Usecase<UserEntity, NoParams> {
  final AuthenticationRepository repository;
  GetCurrentUserUsecase({required this.repository});

  @override
  TaskEither<Failure, UserEntity> call(NoParams params) {
    return repository.getCurrentUser();
  }
}
