import 'package:blog_app2/core/error/failures.dart';
import 'package:blog_app2/core/usecase/usecase.dart';
import 'package:blog_app2/core/common/entities/user.dart';
import 'package:blog_app2/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class CurrentUser implements UseCase<User, NoParams> {
  final AuthRepository authRepository;
  CurrentUser(this.authRepository);

  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return await authRepository.currentUser();
  }
}
