import 'package:flutter_application_5/domain/entity/info_entity.dart';
import 'package:flutter_application_5/domain/entity/users_entity.dart';

class Info extends InfoEntity {
  late int id;
  final String familiya;
  final String name;
  final String middle;
  final int id_users;

  Info({
    required this.familiya,
    required this.name,
    required this.middle,
    required this.id_users,
  }) : super(
            familiya: familiya, name: name, middle: middle, id_users: id_users);

  Map<String, dynamic> toMap() {
    return {
      'familiya': familiya,
      'name': name,
      'middle': middle,
      'id_users': id_users,
    };
  }

  factory Info.toFromMap(Map<String, dynamic> json) {
    return Info(
      familiya: json['familiya'],
      name: json['name'],
      middle: json['middle'],
      id_users: json['id_users'],
    );
  }
}
