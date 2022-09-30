import 'package:flutter/material.dart';
import 'package:flutter_application_3/meditate_mind_deep.dart';
import 'package:flutter_application_3/meditate_song_of_moon.dart';
import 'package:flutter_application_3/meditate_welcome.dart';
void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: PageView(
        children: const [
          Welcome(),
          Mind(),
          SongOfMoon(),
         
        ]
      )
    );
  }
}