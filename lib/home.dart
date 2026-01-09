import 'package:contact2/appbar.dart';
import 'package:contact2/button.dart';
import 'package:contact2/mars.dart';
import 'package:contact2/plantesdata.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});
  static const routesname = "Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Appbar1(Text1: " Explor", Text2: "Which planet\n would you like to explore?",showBackButton: false,),
                Image.asset(planets[index].imagePath),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEE403D),
                        shape: CircleBorder(),
                      ),
                      onPressed: () {
                        if (index < planets[index].imagePath.length - 1) {
                          index++;
                        }
                        setState(() {});
                      },
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                     planets[index].name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEE403D),
                        shape: CircleBorder(),
                      ),
                      onPressed: () {
                        if (index > 0) {
                          index--;
                        }
                        setState(() {});
                      },
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              Button(page:Mars(
                planet: planets[index],
              ),pagename: planets[index].name,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
