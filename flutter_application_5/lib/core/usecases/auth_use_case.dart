import 'package:dartz/dartz.dart';
import 'package:flutter_application_5/domain/entity/role_entity.dart';


abstract class AuthUseCase<Type,Params>{
Future<Either<String,RoleEnum>> singIn(Params params);
Future<Either<String,bool>> singUp(Params params);
}