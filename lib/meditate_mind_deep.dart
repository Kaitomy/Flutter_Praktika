
import 'package:flutter/material.dart';


class Mind extends StatefulWidget {
  const Mind({Key? key}) : super(key: key);

  @override
  State<Mind> createState() => _MindState();
}


class _MindState extends State<Mind> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: SafeArea(
      child: Container(
alignment: Alignment.center,
padding: const EdgeInsets.all(20),
    child: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
ClipRRect(
  borderRadius: BorderRadius.circular(20), // Image border
  child: SizedBox.fromSize(
    size: const Size.fromRadius(130), // Image radius
    child: Image.asset('assets/1111.png', fit: BoxFit.cover),
  ),
),
  Container(
                  padding: const EdgeInsets.only(top: 15),
                  child: const Text("Peter Mach",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color:  Color.fromARGB(128, 0, 0, 0),
                      fontSize: 12,
                    )
                  ),
                ),

     Container(
                  padding: const EdgeInsets.only(top: 5),
                  child: const Text("Mind Deep Relax",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color:  Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      
                      fontWeight: FontWeight.bold
                    )
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: const Text("Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color:  Color.fromARGB(200, 0, 0, 0),
                      fontSize: 15,
                      
                    )
                  ),
                ),  


SizedBox(
  height: 50.0,
  
                 child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 3, 158, 162)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                        ),
                      )
                    ), 
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 0),
                        child: 
                        Text("▷  ", style: TextStyle(fontSize: 20 )),
                      ),
                      Text("Play Next Session", style: TextStyle(fontSize: 16)),
                    ]),
                  ),     
),


     Row(
      
      children: [
      Container(
        margin: const EdgeInsets.only(top: 35, bottom: 8),
        height: 42,
        width: 42,
        alignment: Alignment.center,
        padding: const EdgeInsets.only(bottom: 5, left: 1),
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 47, 128, 237)
        ),
        child: const Text("▷",
          style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
      ),
      Expanded(
        child: Padding(
        padding: const EdgeInsets.only(left: 8, top:15 ),
        
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text("Sweet Memories", style: const TextStyle( fontSize: 17,fontWeight: FontWeight.bold)),
        const   Text("December 29 Pre-Launch", style: const TextStyle( fontSize: 12, color: Color.fromARGB(128, 0, 0, 0)))
        ],),
      )),
      PopupMenuButton(
        itemBuilder: (BuildContext context) => [],
        icon: const Icon(Icons.more_horiz, size: 30, color: Color(0xFFBBBBBB)),
      )
    ]),
    
  const Divider(color: Color.fromARGB(255, 177, 175, 175)),

  Row(
      
      children: [
      Container(
        margin: const EdgeInsets.only(top: 8,bottom: 8),
        height: 42,
        width: 42,
        alignment: Alignment.center,
        padding: const EdgeInsets.only(bottom: 5, left: 1),
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 3, 158, 162)
        ),
        child: const Text("▷",
          style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
      ),
      Expanded(
        child: Padding(
        padding: const EdgeInsets.only(left: 8, top:5 ),
        
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text("A Day Dream", style: const TextStyle( fontSize: 17,fontWeight: FontWeight.bold)),
        const   Text("December 29 Pre-Launch", style: const TextStyle( fontSize: 12, color: Color.fromARGB(128, 0, 0, 0)))
        ],),
      )),
      PopupMenuButton(
        itemBuilder: (BuildContext context) => [],
        icon: const Icon(Icons.more_horiz, size: 30, color: Color(0xFFBBBBBB)),
      )
    ]),

const Divider(color: Color.fromARGB(255, 177, 175, 175)),

  Row(
      
      children: [
      Container(
        margin: const EdgeInsets.only(top: 8,bottom: 8),
        height: 42,
        width: 42,
        alignment: Alignment.center,
        padding: const EdgeInsets.only(bottom: 5, left: 1),
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 240, 146, 53)
        ),
        child: const Text("▷",
          style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
      ),
      Expanded(
        child: Padding(
        padding: const EdgeInsets.only(left: 8, top:5 ),
        
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text("Mind Explore", style: const TextStyle( fontSize: 17,fontWeight: FontWeight.bold)),
        const   Text("December 29 Pre-Launch", style: const TextStyle( fontSize: 12, color: Color.fromARGB(128, 0, 0, 0)))
        ],),
      )),
      PopupMenuButton(
        itemBuilder: (BuildContext context) => [],
        icon: const Icon(Icons.more_horiz, size: 30, color: Color(0xFFBBBBBB)),
      )
    ]),

const Divider(color: Color.fromARGB(255, 177, 175, 175)),

],

    ),

      ),
      

      ),
    ),

    );
  }
}
