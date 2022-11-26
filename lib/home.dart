// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:flutter_mobile6/dashboard.dart';
import 'package:flutter_mobile6/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _bool = false;

  void _Boolean() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _bool = !_bool;
      if (_bool == true) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Dashboard(),
        ));
        print("True");
      } else {
        print("False");
      }
    });
    prefs.setBool('bool', _bool);
  }

  _getBoolean() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _bool = prefs.getBool('bool') ?? _bool;
      if (_bool == true) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Dashboard(),
        ));
        print("True");
      } else {
        print("False");
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _getBoolean();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade300,
        child: Center(
          child: GestureDetector(
            onTap: () {
              _Boolean;
            },
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                    color: Colors.blue,
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
                      color: Color.fromARGB(255, 68, 133, 185),
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
