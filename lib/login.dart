import 'package:contact2/home.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  static const routesname = "login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: -400,
              top: 50,
              bottom: 50,
              child: Image.asset(
                "assets/images/login.png",
                fit: BoxFit.contain,
                width: 800,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Explore\n The \nUniverse",
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.all(30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Home.routesname);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explore",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      weight: 40,
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(342, 60),
                  backgroundColor: Color(0xFFEE403D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
