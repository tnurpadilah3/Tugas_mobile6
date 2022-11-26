// ignore_for_file: prefer_const_constructors, avoid_print 
 
import 'package:flutter/material.dart'; 
import 'package:flutter_mobile6/home.dart'; 
 
void main() { 
  runApp(const MyApp()); 
} 
 
class MyApp extends StatelessWidget { 
  const MyApp({super.key}); 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      debugShowCheckedModeBanner: false, 
      home: const Home(), 
    ); 
  } 
}