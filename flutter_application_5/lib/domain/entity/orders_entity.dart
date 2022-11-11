import 'package:flutter_application_5/domain/entity/tovar_entity.dart';
import 'package:flutter_application_5/domain/entity/info_entity.dart';

class OrdersEntity{
  late int id;
  final DateTime date;
  final String sum;
  final String status;
   final String amount;
    final int number;
  final int id_info;
   final int id_tovar;
  
  OrdersEntity({
    required this.date,
    required this.sum,
    required this.status,
    required this.amount,
     required this.number,
       required this.id_info,
         required this.id_tovar,
    });
}