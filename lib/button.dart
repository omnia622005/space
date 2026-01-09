import 'package:flutter/material.dart';

class Button extends StatelessWidget {
   Button({super.key,required this.page,required this.pagename});
Widget page;
String pagename;

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.all(30),
      child: ElevatedButton(
        onPressed: () {
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => page,
              ),
            );
          }
          ;
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Explore $pagename",
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
    );
  }
}
