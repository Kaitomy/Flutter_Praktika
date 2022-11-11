//класс отвечающий за БД
abstract class DataBaseRequest{

/// Таблица Роли
  ///

  /// Поля таблицы: Название роли

  static const String tableRole = 'Role';
  static const String tableUsers = 'Users';
  static const String tableSize = 'Size';
  static const String tableColors = 'Colors';
  static const String tableInfo = 'Info';
  static const String tableSklad = 'Sklad';
  static const String tableContractor = 'Contractor';
  static const String tableFavor = 'Favor';
   static const String tableOrders = 'Orders';
  static const String tableTovar = 'Tovar';
  
static const List<String> tableList= [
  tableRole,
  tableUsers,
  tableSize,
  tableColors,
  tableInfo,
  tableContractor,
  tableSklad,
  tableFavor,
  tableOrders,
  tableTovar,
];

  static const List<String> tableCreateList = [
  _createTableRole,
  _createTableUsers,
  _createtableSize,
  _createtableColors,
  _createtableInfo,
  _createtableContractor,
  _createtableSklad,
  _createtableFavor,
  _createtableOrders,
  _createtableTovar,

  ]; 
  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';
  static const String _createTableUsers =
      'CREATE TABLE "$tableUsers" ("id"	INTEGER,"login"	TEXT NOT NULL UNIQUE,"password"	TEXT NOT NULL,"email"	TEXT NOT NULL UNIQUE,"id_role"	INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("id"),PRIMARY KEY("id"))';
 static const String _createtableSize =
      'CREATE TABLE "$tableSize" ("id"	INTEGER,"number" TEXT NOT NULL  UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';
 static const String _createtableColors =
      'CREATE TABLE "$tableColors" ("id"	INTEGER,"name" TEXT NOT NULL  UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';
static const String _createtableInfo =
      'CREATE TABLE "$tableInfo" ("id"	INTEGER,"familiya"	TEXT NOT NULL,"name"	TEXT NOT NULL,"middle"	TEXT NULL,"id_users"	INTEGER,FOREIGN KEY("id_users") REFERENCES "Users"("id"),PRIMARY KEY("id"))';
static const String _createtableContractor =
      'CREATE TABLE "$tableContractor" ("id"	INTEGER,"name" TEXT NOT NULL  UNIQUE,"address" TEXT NOT NULL ,"index" INTEGER NOT NULL ,"email" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';
static const String _createtableSklad =
      'CREATE TABLE "$tableSklad" ("id"	INTEGER,"date" DATE NOT NULL,"address" TEXT NOT NULL,"index"	INTEGER NOT NULL ,"id_tovar"	INTEGER, "id_contractor" INTEGER,FOREIGN KEY("id_tovar") REFERENCES "Tovar"("id"),FOREIGN KEY("id_contractor") REFERENCES "Contractor"("id"),PRIMARY KEY("id"))';
static const String _createtableFavor =
      'CREATE TABLE "$tableFavor" ("id"	INTEGER,"date" DATE NOT NULL,"id_tovar"	INTEGER,"id_info"	INTEGER,FOREIGN KEY("id_tovar") REFERENCES "Tovar"("id"),FOREIGN KEY("id_info") REFERENCES "Info"("id"),PRIMARY KEY("id"))';
static const String _createtableOrders =
      'CREATE TABLE "$tableOrders" ("id"	INTEGER,"date" DATE NOT NULL, "sum" TEXT NOT NULL, "status" TEXT NOT NULL,"amount" TEXT NOT NULL,"number"	INTEGER NOT NULL,"id_tovar"	INTEGER,"id_info"	INTEGER,	FOREIGN KEY("id_tovar") REFERENCES "Tovar"("id"),FOREIGN KEY("id_info") REFERENCES "Info"("id"),PRIMARY KEY("id"))';
 static const String _createtableTovar =
      'CREATE TABLE "$tableTovar" ("id"	INTEGER,"name" TEXT NOT NULL,"price" TEXT NOT NULL,"desc" TEXT NOT NULL ,"id_size" INTEGER,"id_colors"	INTEGER,FOREIGN KEY("id_size") REFERENCES "Size"("id"),FOREIGN KEY("id_colors") REFERENCES "Colors"("id"),PRIMARY KEY("id"))';

      static String deleteTable(String table) => 'DROP TABLE $table';

}