import 'package:flutter_application_5/domain/entity/favor_entity.dart';
import 'package:flutter_application_5/domain/entity/tovar_entity.dart';
import 'package:flutter_application_5/domain/entity/info_entity.dart';

class Favor extends FavorEntity {
  late int id;
  final DateTime date;
  final int id_tovar;
  final int id_info;

  Favor({
    required this.date,
    required this.id_tovar,
    required this.id_info,
  }) : super(date: date, id_tovar: id_tovar, id_info: id_info);

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'id_tovar': id_tovar,
      'id_info': id_info,
    };
  }

  factory Favor.toFromMap(Map<String, dynamic> json) {
    return Favor(
      date: json['date'],
      id_tovar: json['id_tovar'],
      id_info: json['id_info'],
    );
  }
}
