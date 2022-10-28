import 'package:flutter_application_5/domain/entity/role_entity.dart';
import 'package:flutter_application_5/domain/entity/users_entity.dart';

class Users extends UsersEntity {
  late int id;

  Users({
    super.id = 0,
    required super.login,
    required super.password,
    required super.email,
    required super.id_role,
  });

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'password': password,
      'email': email,
      'id_role': id_role.id,
    };
  }

  factory Users.toFromMap(Map<String, dynamic> json) {
    return Users(
      id: json['id'] as int,
      login: json['login'],
      password: json['password'],
      email: json['email'],
      id_role: RoleEnum.values.firstWhere((element) => element.id == (json['id_role'] as int)),

    );
  }
}
