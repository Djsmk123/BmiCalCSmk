import 'package:flutter/material.dart';

import 'inputPage.dart';
String msg='';
String category='';
Gender selectedGender;
//Default Data..
int height=180;
int weight=53;
int age=18;
const kLabelTextStyle=TextStyle(
  fontSize: 18,
  color:Color(0xFF8D8E98),
);
const kButtomContainerHeight=80.0;
const kActiveCardColour=Color(0xFF1D1E33);
const kInactiveCardColour=Color(0xFF111328);
Color maleCardColour=kInactiveCardColour;
Color femaleCardColour=kInactiveCardColour;
const kNumberTextStyle=TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);
