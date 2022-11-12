import 'package:flutter/material.dart';

class Admin extends StatefulWidget {
  
  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(248, 97, 172, 79),
        body: SafeArea(
            child: Center(
                child: Column(
      children: [
        const Padding(
                                    padding: EdgeInsets.only(top: 5, bottom: 35),
                                    child: Text("Администратор",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
        ElevatedButton(
          child: Text('Назад',
          style: TextStyle(color:Colors.black),
          ),
          style: ElevatedButton.styleFrom(
              fixedSize: Size(300, 50),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    ))));
  }
}

