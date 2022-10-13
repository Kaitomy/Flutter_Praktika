import 'package:flutter_application_5/domain/entity/colors_entity.dart';

class Colors extends ColorsEntity{
late int id;
final String name;

Colors({
  required this.name,
}) : super(name: name);

Map<String,dynamic> toMap() {
  return {
    'name' : name,
  };
}
factory Colors.toFromMap(Map<String,dynamic> json){
  return Colors(name: json['name']);
}
}