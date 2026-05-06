import 'package:blog_app/core/error/failure.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

// Usecase<ReturnType, InputType>
/// In this case, the use case is for user sign-up, which returns a String (user ID) and takes UserSignUpParams as input.
class UserSignUp implements Usecase<String, UserSignUpParams> {
  final AuthRepository authRepository;

  UserSignUp({required this.authRepository});
  @override
  ///call  make this class callable like a function, allowing you to execute the sign-up logic by simply calling an instance of UserSignUp with the required parameters.
  Future<Either<Failure, String>> call(UserSignUpParams params) async {
  return await  authRepository.signUpWithEmailAndPassword(
    email: params.email,
    password: params.password,
    name:params.name,
     );
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
