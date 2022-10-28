import 'package:flutter_application_5/domain/entity/role_entity.dart';

class UsersEntity{
  late int id;
  final String login;
  final String password;
  final String email;
  final RoleEnum id_role;
  
  UsersEntity({
    this.id = 0,
    required this.login,
    required this.password,
    required this.email,
    required this.id_role,
    });
}