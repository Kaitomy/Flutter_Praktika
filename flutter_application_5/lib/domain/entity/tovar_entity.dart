import 'package:flutter_application_5/domain/entity/colors_entity.dart';
import 'package:flutter_application_5/domain/entity/size_entity.dart';
class TovarEntity{
  late int id;
  final String name;
  final String price;
  final String desc;
  final int id_size;
   final int id_colors;
  
  TovarEntity({
    required this.name,
    required this.price,
    required this.desc,
    required this.id_size,
     required this.id_colors,
    });
}