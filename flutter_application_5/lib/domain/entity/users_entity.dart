class UsersEntity{
  late int id;
  final String login;
  final String password;
  final String email;
  final int id_role;
  
  UsersEntity({
    required this.login,
    required this.password,
    required this.email,
    required this.id_role,
    });
}