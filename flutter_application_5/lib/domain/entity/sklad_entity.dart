import 'package:flutter_application_5/domain/entity/contractor_entity.dart';
import 'package:flutter_application_5/domain/entity/tovar_entity.dart';
import 'package:flutter_application_5/domain/entity/colors_entity.dart';
class SkladEntity{
  late int id;
  final DateTime date;
  final String address;
  final String index;
  final int id_tovar;
   final int id_contractor;
  
  SkladEntity({
    required this.date,
    required this.address,
    required this.index,
    required this.id_tovar,
     required this.id_contractor,
    });
}