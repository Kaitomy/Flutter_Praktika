import 'dart:io';

import 'package:flutter_application_5/common/data_base_reguest.dart';
import 'package:flutter_application_5/data/model/role.dart';
import 'package:sqflite/sqflite.dart';

import 'package:path_provider/path_provider.dart' as path_provider;

import 'package:path/path.dart';

class DataBaseHelper{
static final DataBaseHelper instance = DataBaseHelper._instance();

DataBaseHelper._instance();

late final Directory _appDocumentDirectory;
late final String _pathDB;
late final Database dataBase;
Future<void> init() async {

  _appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory();

  _pathDB = join(_appDocumentDirectory.path,'booksstore.db');

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS ) {}
  else {
    dataBase = await openDatabase(
_pathDB,
onCreate: (db,version) async{
  await onCreateTable(db);
});
  }
}
Future<void> onCreateTable(Database db) async{
for (var element in DataBaseRequest.tableCreateList) {
  db.execute(element);
}
await onInitTable(db);
}
Future<void> onInitTable(Database db) async {
  try{
 db.insert(DataBaseRequest.tableRole, Role(role: 'Администратор ').toMap());
 db.insert(DataBaseRequest.tableRole, Role(role: 'Пользователь ').toMap());
  } on DatabaseException catch(e){
    print(e.result);
  }
}

Future<void> onDropDataBase() async{
  dataBase.close();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS ) {

  } else {
    deleteDatabase(_pathDB);
  }
}
}