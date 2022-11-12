import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter_application_5/common/data_base_reguest.dart';
import 'package:flutter_application_5/data/repositories/auth_repository_impl.dart';
import 'package:flutter_application_5/data/model/role.dart';
import 'package:flutter_application_5/data/model/size.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:flutter_application_5/app_router.dart';
import 'package:flutter_application_5/data/repositories/auth_repository_impl.dart';
import 'package:flutter_application_5/domain/entity/role_entity.dart';
import 'package:flutter_application_5/domain/usecase/auth.dart';
import 'package:path/path.dart';
import 'package:flutter_application_5/User.dart';
import 'package:flutter_application_5/Admin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  usernameValidator(String username) {
    if (username.isEmpty) {
      return false;
    } else if (username.length < 2) {
      return false;
    } else if (username.length > 20) {
      return false;
    }
    return true;
  }

  passwordValidator(String password) {
    if (password.isEmpty) {
      return false;
    } else if (password.length < 4) {
      return false;
    } else if (password.length > 20) {
      return false;
    }
    return true;
  }

  emailValidator(String email) {
    if (email.isEmpty) {
      return false;
    } else if (email.length < 4) {
      return false;
    } else if (email.length > 20) {
      return false;
    }
    return true;
  }

  GlobalKey<FormState> _key = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _nicknameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nicknameController2 = TextEditingController();
  TextEditingController _passwordController2 = TextEditingController();

  bool isObscure = true;
  bool _isValid = true;
  @override
  Widget build(BuildContext context) {
    void signUp() async {
      final AuthReposityImpl auth = AuthReposityImpl();
      await Auth(auth).singUp(AuthParams(
        login: _nicknameController.text,
        password: _passwordController.text,
        email: _emailController.text,
      ));
    }

    void signIn() async {
      final AuthReposityImpl auth = AuthReposityImpl();
      var result = await Auth(auth).singIn(AuthParams(
        login: _nicknameController2.text,
        password: _passwordController2.text,
        email: "-",
      ));
      String f = result.toString();
      if (f.contains("admin") == true) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Admin()));
      } else if (f.contains("user") == true) {
   Navigator.push(context, MaterialPageRoute(builder: (context) => User()));
      } else {
       const snackBar = SnackBar(
                                            content: Text('Authorization failed'),
                                          );
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
      }
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Shop program'),
      // ),

      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(248, 97, 172, 79)),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
                Widget>[
          SizedBox(height: 20.0),
          const Text('Shop',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 22)),
          DefaultTabController(
              length: 2, // length of tabs
              initialIndex: 0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: const TabBar(
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(
                              icon: Icon(IconData(0xf672,
                                  fontFamily: 'MaterialIcons'))),
                          Tab(
                              icon: Icon(IconData(0xf522,
                                  fontFamily: 'MaterialIcons'))),
                        ],
                      ),
                    ),
                    Container(
                        height: 600, //height of TabBarView
                        decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey, width: 0.5))),
                        child: TabBarView(children: <Widget>[
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text("              Регистрация",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 16),
                                  child: TextFormField(
                                    controller: _nicknameController,
                                    decoration: const InputDecoration(
                                      border: UnderlineInputBorder(),
                                      labelText: 'Введите никнейм',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 16),
                                  child: TextFormField(
                                    controller: _emailController,
                                    decoration: const InputDecoration(
                                      border: UnderlineInputBorder(),
                                      labelText: 'Введите email',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 16),
                                  child: TextFormField(
                                    controller: _passwordController,
                                    decoration: const InputDecoration(
                                      border: UnderlineInputBorder(),
                                      labelText: 'Введите пароль',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50.0,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25, right: 25),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if ((usernameValidator(
                                                    _nicknameController.text) ==
                                                true) &
                                            (passwordValidator(
                                                    _passwordController.text) ==
                                                true) &
                                            (emailValidator(
                                                    _emailController.text) ==
                                                true)) {
                                          signUp();
                                          const snackBar2 = SnackBar(
                                            content: Text('Welcome!!!'),
                                          );
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar2);
                                        } else {
                                          const snackBar = SnackBar(
                                            content: Text('Error!'),
                                          );
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        }
                                      },
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                            ),
                                          )),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text("Регистрация",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black)),
                                          ]),
                                    ),
                                  ),
                                ),
                               
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text("              Авторизация",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 16),
                                    child: TextFormField(
                                      controller: _nicknameController2,
                                      decoration: const InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: 'Введите никнейм',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 16),
                                    child: TextFormField(
                                      controller: _passwordController2,
                                      decoration: const InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: 'Введите пароль',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50.0,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25, right: 25),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          signIn();
                                        },
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.white),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                              ),
                                            )),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text("Авторизоваться в системе",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black)),
                                            ]),
                                      ),
                                    ),
                                  ),
                                 
                                ]),
                          ),
                        ]))
                  ])),
        ]),
      ),
    );
  }
}
