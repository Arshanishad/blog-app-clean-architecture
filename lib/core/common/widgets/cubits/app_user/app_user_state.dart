part of 'app_user_cubit.dart';

@immutable
sealed class AppUserState {}

final class AppUserInitial extends AppUserState {}

final class AppUserLoggedIn extends AppUserState{
 // ignore: prefer_typing_uninitialized_variables
 final User user;
 AppUserLoggedIn(this.user);
}
//core cannot depend on other features
//other features can depend on core