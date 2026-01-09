import 'package:flutter/material.dart';
import 'planet.dart';

final List<Planet> planets = [
  Planet(
    name: 'Mercury',
    description: "The smallest planet in our solar system",
    imagePath: 'assets/images/mercury.png',
    about:
        "The smallest planet in our solar system and closest to the Sun. Mercury has a heavily cratered surface and extreme temperature variations "
        ,distance: "distance : 57.9 million km\n diameter: 4,879 km  \n gravity: '3.7 m/s²'\n"


   " \nrotationPeriod: '59 days',"
   " \norbitalPeriod: '88 days',"
   " \ntemperature: '-173°C to 427°C',"

  ),

  Planet(
    name: 'Earth',
    description:"Our Blue Marble " ,
    imagePath: 'assets/images/earth.png',
    about:
        'Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth\'s magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.'"\n"
   ,distance:'distance: 149.6 million km'
  " \n diameter: '12,742 km',"
   " \n gravity: '9.8 m/s²'"
   " \nrotationPeriod: '24 hours',"
   " \norbitalPeriod: '365 days',"
   " \ntemperature: '-88°C to 58°C',"
  ),
  Planet(
    name: 'Mars',
    description: "The Red Planet",
    imagePath: 'assets/images/Mars.png',
    about: ''

        'The Red Planet, known for its iron oxide surface. Mars has the largest volcano and canyon in the solar system.',
      distance:"distance: '227.9 million km'"
    "\ndiameter: '6,779 km'"
   "\n gravity: '3.7 m/s²'"
    "\nrotationPeriod: '24.6 hours'"
   "\n orbitalPeriod: '687 days'"
   "\n temperature: '-87°C to -5°C'"

  ),




];
