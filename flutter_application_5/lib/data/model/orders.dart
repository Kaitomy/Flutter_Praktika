import 'package:flutter_application_5/domain/entity/orders_entity.dart';

class Orders extends OrdersEntity{
late int id;
final DateTime date;
final String sum;
final String status;
final String amount;
final int number;
final int id_tovar;
final int id_info;

Orders({
  required this.date,
  required this.sum,
  required this.status,
  required this.amount,
  required this.number,
   required this.id_tovar,
    required this.id_info,
}) : super(date: date,
sum: sum,
status: status,
amount: amount,
number: number,
id_tovar: id_tovar,
id_info: id_info);

Map<String,dynamic> toMap() {
  return {
    'date' : date,
     'sum' : sum,
      'status' : status,
       'amount' : amount,
        'number' : number,
    'id_tovar' : id_tovar,
    'id_info' : id_info,

  };
}
factory Orders.toFromMap(Map<String,dynamic> json){
  return Orders(
    date: json['date'],
     sum: json['sum'],
      status: json['status'],
       amount: json['amount'],
        number: json['number'],
     id_tovar: json['id_tovar'],
      id_info: json['id_info'],
    );
}
}