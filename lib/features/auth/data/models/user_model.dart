import 'package:blog_app/features/auth/domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    required super.email,
    required super.name, 
    required super.id
    });
}
