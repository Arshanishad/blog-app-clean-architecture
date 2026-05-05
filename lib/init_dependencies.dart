import 'package:blog_app/core/secrets/app_secrets.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final serviceLocator =GetIt.instance;

Future<void> initDependencies() async{
final supabase= await Supabase.initialize(url: AppSecrets.supabaseUrl, anonKey: AppSecrets.supabaseAnonKey);
serviceLocator.registerFactory(() => AuthRepository);
}

void _initAuth(){

}