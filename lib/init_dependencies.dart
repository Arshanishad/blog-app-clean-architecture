import 'package:blog_app/core/common/widgets/cubits/app_user/app_user_cubit.dart';
import 'package:blog_app/core/secrets/app_secrets.dart';
import 'package:blog_app/features/auth/data/data_sources/auth_remote_data_sources.dart';
import 'package:blog_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:blog_app/features/auth/domain/usecases/current_user.dart';
import 'package:blog_app/features/auth/domain/usecases/user_login.dart';
import 'package:blog_app/features/auth/domain/usecases/user_sign_up.dart';
import 'package:blog_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  final supabase = await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseAnonKey,
  );

  // Supabase
  serviceLocator.registerLazySingleton<SupabaseClient>(
    () => supabase.client,
  );
//core 
serviceLocator.registerLazySingleton(()=>AppUserCubit());
  _initAuth();
}


void _initAuth() {
  // DataSource
  serviceLocator.registerFactory<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(serviceLocator()),
  );

  // Repository
  serviceLocator.registerFactory<AuthRepository>(
    () => AuthRepositoryImpl(serviceLocator()),
  );

  // Usecases
  serviceLocator.registerFactory<UserSignUp>(
    () => UserSignUp(authRepository: serviceLocator()),
  );

  serviceLocator.registerFactory<UserLogin>(
    () => UserLogin(serviceLocator()),
  );

  serviceLocator.registerFactory<CurrentUser>(
    () => CurrentUser(serviceLocator()),
  );
  

  // Bloc
  serviceLocator.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      userSignUp: serviceLocator(), 
      currentUser: serviceLocator(), 
      userLogin: serviceLocator(), 
      appUserCubit: serviceLocator(),
    ),
  );
}