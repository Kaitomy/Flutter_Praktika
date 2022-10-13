import 'package:flutter_application_5/domain/entity/size_entity.dart';

class Size extends SizeEntity{
late int id;
final String number;

Size({
  required this.number,
}) : super(number: number);

Map<String,dynamic> toMap() {
  return {
    'number' : number,
  };
}
factory Size.toFromMap(Map<String,dynamic> json){
  return Size(number: json['number']);
}
}