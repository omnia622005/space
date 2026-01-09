import 'package:contact2/home.dart';
import 'package:contact2/login.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Login.routesname,
      routes: {
Login.routesname:(context)=>Login(),
        Home.routesname:(context)=>Home(),


      },
    );
  }
}
