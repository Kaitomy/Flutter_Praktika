import 'package:flutter_application_5/common/data_base_reguest.dart';
import 'package:flutter_application_5/core/db/data_base_helper.dart';
import 'package:flutter_application_5/data/model/users.dart';
import 'package:flutter_application_5/domain/entity/role_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_application_5/domain/repositories/auth_repositories.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/app_router.dart';
import 'package:flutter_application_5/core/db/data_base_helper.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter_application_5/welcome.dart';

class AuthReposityImpl implements AuthRepositories {
  final _db = DataBaseHelper.instance.dataBase;
  @override
  // TODO: implement table
  String get table => DataBaseRequest.tableUsers;

  @override
  Future<Either<String, RoleEnum>> signIn(
      String login, String password) async {
    try {
      var user =
          (await _db.query(table, where: 'login = ?', whereArgs: [login]))
              .map((e) => Users.toFromMap(e));

      if (user.isEmpty) {
        return const Left('Такого пользователя нет');
      }
      if (user.first.password != password) {
        return const Left('Неправильный пароль');
      }
      

      return Right(user.first.id_role);
      
    } on DatabaseException catch (error) {
      return const Left('');
    }
  }

  @override
  Future<Either<String, bool>> signUp(
      String login, String password, String email) async {
    try {
      await _db.insert(
          table,
          Users(
            login: login,
            password: password,
            email: email,
            id_role: RoleEnum.user,
          ).toMap());
      return const Right(true);
    } on DatabaseException catch (error) {
      return const Left('');
      print(error.result);
    }
  }
}
