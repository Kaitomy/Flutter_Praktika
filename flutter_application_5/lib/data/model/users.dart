import 'package:flutter_application_5/domain/entity/users_entity.dart';

class Users extends UsersEntity {
  late int id;
  final String login;
  final String password;
  final String email;
  final int id_role;

  Users({
    required this.login,
    required this.password,
    required this.email,
    required this.id_role,
  }) : super(
          login: login,
          password: password,
          email: email,
          id_role: id_role,
        );

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'password': password,
      'email': email,
      'id_role': id_role,
    };
  }

  factory Users.toFromMap(Map<String, dynamic> json) {
    return Users(
      login: json['login'],
      password: json['password'],
      email: json['email'],
      id_role: json['id_role'],
    );
  }
}
