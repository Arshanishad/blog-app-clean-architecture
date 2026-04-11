import 'package:blog_app/core/theme/error/failure.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:fpdart/fpdart.dart';

class UserSignUp implements Usecase<String, UserSignUpParams> {
  @override
  Future<Either<Failure, String>> call(UserSignUpParams params) {
    throw UnimplementedError();
  }
}

class UserSignUpParams {
  final String name;
  final String email;
  final String password;

  UserSignUpParams({
    required this.name,
    required this.email,
    required this.password,
  });
}
