import 'package:contact2/planet.dart';
import 'package:flutter/material.dart';

import 'appbar.dart';

class Mars extends StatelessWidget {
   Mars({super.key,required this.planet});
  static const routesname = "Mars";
  Planet planet;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,

          child: SingleChildScrollView(
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Appbar1(Text1: " ${planet.name}",Text2: " ${planet.name}:${planet.description}",),
                Image.asset(planet.imagePath),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Text("About",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),textAlign: TextAlign.start,)),
                Container( padding: EdgeInsets.all(15),child: Text(planet.about,style: TextStyle(fontSize: 14,color: Colors.white),textAlign: TextAlign.start,)),
                Container( padding: EdgeInsets.all(15),child: Text(planet.distance,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),textAlign: TextAlign.start,))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
