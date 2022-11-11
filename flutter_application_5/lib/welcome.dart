import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}
   usernameValidator(String username){
        if(username.isEmpty){
          return false;
        }else if(username.length < 2){
          return false;
        }else if(username.length > 20){
          return false;
        }
        return true;
  }
  //password validator possible structure
  passwordValidator(String password){
        if(password.isEmpty){
          return false;
        }else if(password.length < 4){
          return false;
        }else if(password.length > 20){
          return false;
        }
        return true;
  }
  emailValidator(String email){
        if(email.isEmpty){
          return false;
        }else if(email.length < 4){
          return false;
        }else if(email.length > 20){
          return false;
        }
        return true;
  }
class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      decoration:
          const BoxDecoration(color: Color.fromARGB(248, 228, 101, 242)),
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 60),
          child: Text("Регистрация",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Введите никнейм',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Введите email',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Введите пароль',
            ),
          ),
        ),
        const Spacer(flex: 1),
        SizedBox(
          height: 50.0,
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  )),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Продолжить",
                        style: TextStyle(fontSize: 14, color: Colors.black)),
                  ]),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 12),
        ),
        ClipRRect(
          child: Image.asset('assets/1111.png', fit: BoxFit.cover),
        ),
      ]),
    ));
  }
}
