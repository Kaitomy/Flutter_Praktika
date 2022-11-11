import 'package:flutter_application_5/domain/entity/sklad_entity.dart';
import 'package:flutter_application_5/domain/entity/tovar_entity.dart';
import 'package:flutter_application_5/domain/entity/contractor_entity.dart';

class Sklad extends SkladEntity {
  late int id;
  final DateTime date;
  final String address;
  final String index;
  final int id_tovar;
  final int id_contractor;

  Sklad({
    required this.date,
    required this.address,
    required this.index,
    required this.id_tovar,
    required this.id_contractor,
  }) : super(
            date: date,
            address: address,
            index: index,
            id_tovar: id_tovar,
            id_contractor: id_contractor);

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'address': address,
      'index': index,
      'id_tovar': id_tovar,
      'id_contractor': id_contractor,
    };
  }

  factory Sklad.toFromMap(Map<String, dynamic> json) {
    return Sklad(
      date: json['date'],
      address: json['address'],
      index: json['index'],
      id_tovar: json['id_tovar'],
      id_contractor: json['id_contractor'],
    );
  }
}
