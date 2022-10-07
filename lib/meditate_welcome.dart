import 'package:flutter/material.dart';


class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}


class _WelcomeState extends State<Welcome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(5),
        
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 3, 158, 162)
        ),
        child: Column(
          children: [
           const Padding(
              padding: EdgeInsets.only(top: 120),
              child: Text("medinow",
            
              textAlign: TextAlign.center,
              style: TextStyle(
                
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              )
            ),
            ),
            
            const Padding(
              padding: EdgeInsets.only(top: 7,bottom: 10),
              child: Text("Meditate With Us",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                )
              ),
            ),
            const Spacer(flex: 1),
SizedBox(
  height: 50.0,
  
                 child:Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25),
                        child: ElevatedButton(
                  
                  onPressed: () {},
                  style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                        ),
                      )
                    ), 
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                      
                      Text("Sign in with Apple", style: TextStyle(fontSize: 14,color: Colors.black)),
                    ]),
                  ),     
),
),

Container(
  margin:const EdgeInsets.only(top: 12),
  child: 
        SizedBox(
    
      height: 50.0,
    
      
    
                          child:Padding(
    
        
    
                            padding: const EdgeInsets.only(left: 25,right: 25),
    
                            
    
                            child: ElevatedButton(
    
                      onPressed: () {},
    
                      style: ButtonStyle(
    
                       backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 205, 253, 254)),
    
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    
                            RoundedRectangleBorder(
    
                                borderRadius: BorderRadius.circular(30.0),
    
                            ),
    
                          )
    
                        ), 
    
                        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
    
                          
    
                          Text("Continue with Email or Phone", style: TextStyle(fontSize: 14,color: Colors.black)),
    
                        ]),
    
                      ),     
    
    ),
    
    ),
  
), 



          //  const RoundedButton("Sign in with Apple"),
            const Padding(
              padding: EdgeInsets.only(top: 12),
         //     child: RoundedButton("Continue with Email or Phone", color: Color(0xFFCDFDFE)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12,bottom: 40),
              child: Text("Continue with Google", textAlign: TextAlign.center, style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),),
            ),
           
            ClipRRect(
    child: Image.asset('assets/2222.png', fit: BoxFit.cover),

),
           
          ]
        ),
      )
    );
  }
}
