import 'dart:io';

import 'package:flutter_application_5/common/data_base_reguest.dart';
import 'package:flutter_application_5/data/model/role.dart';
import 'package:flutter_application_5/data/model/size.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
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

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS ) {
sqfliteFfiInit();
      var databaseFactory = databaseFactoryFfi;
      dataBase= await databaseFactory.openDatabase(_pathDB,   
        options: OpenDatabaseOptions(
             version: 1,
             onCreate: (db, version) {onCreateTable(db);},
             onUpgrade: ((db, oldVersion, newVersion) async {await onUpgradeTable(db);})
          ));

  }
  else {
    dataBase = await openDatabase(
_pathDB,version: 1,
onUpgrade: (db, oldVersion, newVersion) async{
 await onUpgradeTable(db); 
},
onCreate: (db,version) async{
  await onCreateTable(db);
},
);
  }
}
Future<void> onCreateTable(Database db) async{
for (var element in DataBaseRequest.tableCreateList) {
  await db.execute(element);
}
await onInitTable(db);
}
Future<void> onInitTable(Database db) async {
  try{
 db.insert(DataBaseRequest.tableRole, Role(role: 'Администратор ').toMap());
 db.insert(DataBaseRequest.tableRole, Role(role: 'Пользователь ').toMap());
 db.insert(DataBaseRequest.tableRole, Size(number: 'XL ').toMap());
 db.insert(DataBaseRequest.tableRole, Size(number: 'S ').toMap());
 db.insert(DataBaseRequest.tableRole, Size(number: 'M ').toMap());
  } on DatabaseException catch(e){
    print(e.result);
  }
}

Future<void> onDropDataBase() async{
  dataBase.close();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS ) {
        databaseFactory = databaseFactoryFfi; 
    databaseFactory.deleteDatabase(_pathDB);
      
  } else {
    deleteDatabase(_pathDB);
  }
}

Future<void> onUpgradeTable(Database db) async{
  var tables = await db.rawQuery('SELECT name FROM sqlite_master;');
  for (var table in DataBaseRequest.tableList.reversed) {
    if(tables.where((element) => element['name'] == table).isNotEmpty){
      await db.execute(DataBaseRequest.deleteTable(table));
    }
  }
for (var element in DataBaseRequest.tableCreateList) {
 await db.execute(element);
}
await onInitTable(db);
}
}