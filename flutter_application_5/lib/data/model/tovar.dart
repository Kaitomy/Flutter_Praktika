import 'package:flutter_application_5/domain/entity/tovar_entity.dart';
import 'package:flutter_application_5/domain/entity/size_entity.dart';
import 'package:flutter_application_5/domain/entity/colors_entity.dart';

class Tovar extends TovarEntity {
  late int id;
  final String name;
  final String price;
  final String desc;
  final int id_size;
  final int id_colors;

  Tovar({
    required this.name,
    required this.price,
    required this.desc,
    required this.id_size,
    required this.id_colors,
  }) : super(
            name: name,
            price: price,
            desc: desc,
            id_size: id_size,
            id_colors: id_colors);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'desc': desc,
      'id_size': id_size,
      'id_colors': id_colors,
    };
  }

  factory Tovar.toFromMap(Map<String, dynamic> json) {
    return Tovar(
      name: json['name'],
      price: json['price'],
      desc: json['desc'],
      id_size: json['id_size'],
      id_colors: json['id_colors'],
    );
  }
}
