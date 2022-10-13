import 'package:flutter_application_5/domain/entity/contractor_entity.dart';

class Contractor extends ContractorEntity{
late int id;
final String name;
final String address;
final String index;
final String email;

Contractor({
  required this.name,
   required this.address,
    required this.index,
     required this.email,
}) : super(name: name,
address: address,
index: index,
email: email);

Map<String,dynamic> toMap() {
  return {
    'name' : name,
    'address' : address,
    'index' : index,
    'email' : email,

  };
}
factory Contractor.toFromMap(Map<String,dynamic> json){
  return Contractor(
    name: json['name'],
     address: json['address'],
      index: json['index'],
       email: json['email'],
    );
}
}