import 'package:flutter/material.dart'; 
import 'package:flutter_mobile6/home.dart'; 
 
class Dashboard extends StatelessWidget { 
  const Dashboard({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      body: Container( 
        color: Colors.blue.shade400, 
        child: Center( 
          child: GestureDetector( 
            onTap: () { 
              Navigator.of(context).push(MaterialPageRoute( 
                builder: (context) => const Home(), 
              )); 
            }, 
            child: Container( 
              height: 50, 
              width: 150, 
              decoration: BoxDecoration( 
                color: Colors.blue.shade300, 
                borderRadius: BorderRadius.circular(12), 
                // ignore: prefer_const_literals_to_create_immutables 
                boxShadow: [ 
                  const BoxShadow( 
                    color: Colors.grey, 
                    spreadRadius: 1, 
                    blurRadius: 8, 
                    offset: Offset(5, 5), 
                  ), 
                  const BoxShadow( 
                    color: Colors.white, 
                    spreadRadius: 2, 
                    blurRadius: 8, 
                    offset: Offset(-4, -4), 
                  ), 
                ], 
              ), 
              child: const Center( 
                child: Text( 
                  "Login", 
                  style: TextStyle( 
                      color: Colors.grey, 
                      fontWeight: FontWeight.bold, 
                      fontSize: 18), 
                ), 
              ), 
            ), 
          ), 
        ), 
      ), 
    ); 
  } 
}