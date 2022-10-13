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