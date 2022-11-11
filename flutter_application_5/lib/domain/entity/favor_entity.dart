import 'package:flutter_application_5/domain/entity/tovar_entity.dart';
import 'package:flutter_application_5/domain/entity/info_entity.dart';

class FavorEntity{
  late int id;
  final DateTime date;
  final int id_info;
  final int id_tovar;
  
  FavorEntity({
    required this.date,
    required this.id_info,
    required this.id_tovar,
    });
}