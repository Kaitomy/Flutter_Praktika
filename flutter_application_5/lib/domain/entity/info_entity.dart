import 'package:flutter_application_5/domain/entity/users_entity.dart';
class InfoEntity{
  late int id;
  final String familiya;
  final String name;
  final String middle;
  final int id_users;
  
  InfoEntity({
    required this.familiya,
    required this.name,
    required this.middle,
    required this.id_users,
    });
}