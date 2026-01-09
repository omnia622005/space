import 'package:contact2/home.dart';
import 'package:flutter/material.dart';

class Appbar1 extends StatelessWidget {
  Appbar1({super.key,required this.Text1,required this.Text2, this.showBackButton = true,});
  String Text1;
  String Text2;
  bool showBackButton;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(80),
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(3.14159),
            child: Image.asset(
              "assets/images/moon.jpg",
              fit: BoxFit.contain,
              width: 800,
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.8),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
        ),
        if(showBackButton)ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFEE403D),
              shape: CircleBorder(),
            ), onPressed: () {
          Navigator.pop(context);
        }, child: Icon(Icons.arrow_back_rounded, color: Colors.white,)),
        Container(
          alignment: Alignment.center,
          child: Text(
            Text1,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),

        Container(
          padding: EdgeInsets.all(20),
          height: 220,
          width: 400,
          alignment: Alignment.bottomLeft,
          child: Text(
            Text2,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
