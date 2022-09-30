import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class SongOfMoon extends StatefulWidget {
  const SongOfMoon({Key? key}) : super(key: key);

  @override
  State<SongOfMoon> createState() => _SongOfMoonState();
}


class _SongOfMoonState extends State<SongOfMoon> {
   @override
  Widget build(BuildContext context) {
   return MaterialApp( home: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          title: const Text("Meditate", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
          actions: [
            IconButton(
              onPressed: (){}, 
              iconSize: 27,
              icon: const Icon(Icons.search, color: Colors.black))
          ]
          
        ),
        body: Column(
          children:[
             SingleChildScrollView(scrollDirection: Axis.horizontal, 
             child: Row(
              children: [
              ElevatedButton(
                  
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                    
                   backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 3, 158, 162)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          
                            borderRadius: BorderRadius.circular(30.0),
                        ),
                      )
                    ), 
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                      
                      Text("All", style: TextStyle(fontSize: 13,color: Colors.white)),
                    ]),
                  ),
                  ElevatedButton(
                  
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                    
                   backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 230, 254, 255)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          
                            borderRadius: BorderRadius.circular(30.0),
                        ),
                      )
                    ), 
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                      
                      Text("Bible In a Year", style: TextStyle(fontSize: 13,color: Color.fromARGB(255, 3, 158, 162))),
                    ]),
                  ),
                  ElevatedButton(
                  
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                    
                   backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 230, 254, 255)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          
                            borderRadius: BorderRadius.circular(30.0),
                        ),
                      )
                    ), 
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                      
                      Text("Dailies", style: TextStyle(fontSize: 13,color: Color.fromARGB(255, 3, 158, 162))),
                    ]),
                  ),
ElevatedButton(
                  
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                    
                   backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 230, 254, 255)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          
                            borderRadius: BorderRadius.circular(30.0),
                        ),
                      )
                    ), 
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                      
                      Text("Minutes", style: TextStyle(fontSize: 13,color: Color.fromARGB(255, 3, 158, 162))),
                    ]),
                  ),
                  ElevatedButton(
                  
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                    
                   backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 230, 254, 255)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          
                            borderRadius: BorderRadius.circular(30.0),
                        ),
                      )
                    ), 
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                      
                      Text("November", style: TextStyle(fontSize: 13,color: Color.fromARGB(255, 3, 158, 162))),
                    ]),
                  ),
              ],
                )),
        
        SingleChildScrollView( 
             child: Column(
              children: [
        
        Padding( 
          
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ClipRRect(
  borderRadius: BorderRadius.circular(20), // Image border
child: Image.asset('assets/3333.png', fit: BoxFit.cover,height: 150,),

),
        ),
        Container(
          alignment:Alignment.topLeft,
        child: Padding(
        padding: const EdgeInsets.only(left: 20,top: 10),
        child: const Text("A Song of Moon", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
        ),
                  Container(
          alignment:Alignment.topLeft,
        child: Padding(
        padding: const EdgeInsets.only(left: 20,top: 7),
        child: const Text("Start with the basics", style: const TextStyle(fontSize: 16)),
      ),
        ),

       Padding(padding: const EdgeInsets.only(),
       child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  IconButton(
              onPressed: (){}, 
              iconSize: 15,
              icon: const Icon(Icons.favorite_outline, color: Colors.black)),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '9 Sessions',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(128, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(128, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Colors.black,
                  ),
                ],
              ),
       ),
Padding(padding: EdgeInsets.only(left: 10,right: 10),
child: const Divider(color: Color.fromARGB(255, 177, 175, 175))),
       
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Column(children: [
  Padding( 
          
          padding: const EdgeInsets.only(left: 15, right: 5),
          child: ClipRRect(
  borderRadius: BorderRadius.circular(20), // Image border
child: Image.asset('assets/4444.png', fit: BoxFit.cover,width: 150),

),
        ),
             Container(
        child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: const Text("A Song of Moon", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
        ),
                  Container(
        child: Padding(
        padding: const EdgeInsets.only(),
        child: const Text("Start with the basics", style: const TextStyle(fontSize: 13)),
      ),
        ),

       Padding(padding: const EdgeInsets.only(),
       child: Row(
                children:  [
                  IconButton(
              onPressed: (){}, 
              iconSize: 15,
              icon: const Icon(Icons.favorite_outline, color: Colors.black)),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '9 Sessions',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(128, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(128, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Colors.black,
                  ),
                ],
              ),
       ),
Padding(padding: EdgeInsets.only(),
child: const Divider(color: Color.fromARGB(255, 177, 175, 175))),
        ],
        
        
        ),
Column(children: [
  Padding( 
          
          padding: const EdgeInsets.only(left: 0, right: 20),
          child: ClipRRect(
  borderRadius: BorderRadius.circular(20), // Image border
child: Image.asset('assets/5555.png', fit: BoxFit.cover,width: 150),

),
        ),
                     Container(
        child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: const Text("A Song of Moon", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
        ),
                  Container(
        child: Padding(
        padding: const EdgeInsets.only(),
        child: const Text("Start with the basics", style: const TextStyle(fontSize: 13)),
      ),
        ),

       Padding(padding: const EdgeInsets.only(),
       child: Row(
                children:  [
                  IconButton(
              onPressed: (){}, 
              iconSize: 15,
              icon: const Icon(Icons.favorite_outline, color: Colors.black)),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '9 Sessions',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(128, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(128, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Colors.black,
                  ),
                  
                ],
                
              ),
       ),
Divider(color: Color.fromARGB(255, 177, 175, 175))
        ],
        
        
        ),
     
],

  
),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Column(children: [
  Padding( 
          
          padding: const EdgeInsets.only(left: 15, right: 5),
          child: ClipRRect(
  borderRadius: BorderRadius.circular(20), // Image border
child: Image.asset('assets/6666.png', fit: BoxFit.cover,width: 150),

),
        ),
             Container(
        child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: const Text("A Song of Moon", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
        ),
                  Container(
        child: Padding(
        padding: const EdgeInsets.only(),
        child: const Text("Start with the basics", style: const TextStyle(fontSize: 13)),
      ),
        ),

       Padding(padding: const EdgeInsets.only(),
       child: Row(
                children:  [
                  IconButton(
              onPressed: (){}, 
              iconSize: 15,
              icon: const Icon(Icons.favorite_outline, color: Colors.black)),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '9 Sessions',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(128, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(128, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Colors.black,
                  ),
                ],
              ),
       ),
Padding(padding: EdgeInsets.only(),
child: const Divider(color: Color.fromARGB(255, 177, 175, 175))),
        ],
        
        
        ),
Column(children: [
  Padding( 
          
          padding: const EdgeInsets.only(left: 0, right: 20),
          child: ClipRRect(
  borderRadius: BorderRadius.circular(20), // Image border
child: Image.asset('assets/7777.png', fit: BoxFit.cover,width: 150),

),
        ),
                     Container(
        child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: const Text("A Song of Moon", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
        ),
                  Container(
        child: Padding(
        padding: const EdgeInsets.only(),
        child: const Text("Start with the basics", style: const TextStyle(fontSize: 13)),
      ),
        ),

       Padding(padding: const EdgeInsets.only(),
       child: Row(
                children:  [
                  IconButton(
              onPressed: (){}, 
              iconSize: 15,
              icon: const Icon(Icons.favorite_outline, color: Colors.black)),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '9 Sessions',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(128, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(128, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Colors.black,
                  ),
                  
                ],
                
              ),
       ),
Divider(color: Color.fromARGB(255, 177, 175, 175))
        ],
        
        
        ),
     
],

  
),
              ]
             
             ),
        ),

          ]
       
        ),
        )

    );
    
  }
    

    Widget CreateElementRow( String text){
      return Container(
        margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
        height: 30,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        decoration: BoxDecoration(color: Color.fromARGB(255, 230, 254,255), borderRadius: BorderRadius.circular(15)),
        child: Center( child:
            Text(text, textAlign: TextAlign.center, style:TextStyle(fontSize: 16,  color: Color.fromARGB(255, 3, 158,162)))
            )
       
       );
    }
    
    
}
