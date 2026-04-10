import 'package:blog_app/core/theme/error/failure.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepoitoryImpl implements AuthRepository{
@override
 Future<Either<Failure,String>> loginWithEmailPassword({required String email,required String password}){
  throw  UnimplementedError();
   }


   @override
 Future<Either<Failure,String>> signUpWithEmailPassword({required String email,required String password,required String name}){
  throw  UnimplementedError();
   }
}