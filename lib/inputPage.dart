import 'dart:ui';
import 'package:bmicalculatorgui/BmiCalcuations.dart';

import 'CalculationsScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalculatorgui/IconContent.dart';
import 'package:bmicalculatorgui/ReuseableCard.dart';
import 'constants.dart';
enum Gender
{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
     children:<Widget>[
       Expanded(child:
       Row(
      children:<Widget>[
        Expanded(child:GestureDetector(
        onTap: () {
             setState(() {
               selectedGender=Gender.male;
             });
        },
        child:ResuableCard(colour: selectedGender==Gender.male?kActiveCardColour:kInactiveCardColour,
          cardChild: IconContent(txt:'Male',
            icn: FontAwesomeIcons.mars,
          ),
        ),
        ),
        ),
        Expanded(child:GestureDetector(
          onTap: (){
            setState(() {
             selectedGender=Gender.female;
            });
          },
       child: ResuableCard(colour: selectedGender==Gender.female?kActiveCardColour:kInactiveCardColour,
          cardChild: IconContent(txt:'Female',
          icn:FontAwesomeIcons.venus,
          ),
        ),
        ),
        ),
    ],
       ),
    ),
    Expanded(child:
    ResuableCard(colour: kActiveCardColour,
      cardChild: Column(
        children:<Widget> [
          Text('Height',style: kLabelTextStyle,
          ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.baseline,
                   textBaseline: TextBaseline.alphabetic,
               children: <Widget>[
              Text(
                height.toString(),
                style:kNumberTextStyle,
              ),
              Text(
                'cm',
                style:(kLabelTextStyle),
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbColor: Color(0xFFEB1555),
              activeTrackColor: Colors.white,
              thumbShape:RoundSliderThumbShape(enabledThumbRadius: 16),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
            ),
            child:Slider(value:height.toDouble(),
            min: 120,
            max: 250,

            inactiveColor: Color(0xFF8DE98),
            onChanged: (double newValue){
              setState(() {
                height=newValue.toInt();
              });
            },
          ),
          ),
        ],
      ),
    ),
     ),
       Expanded(child:
       Row(
         children:<Widget>[
           Expanded(child:
           ResuableCard(colour: kActiveCardColour,
             cardChild:Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children:<Widget> [
                 Text(
                   'WEIGHT',
                   style: kLabelTextStyle,
                 ),
                 Text(
                   weight.toString(),
                   style: kNumberTextStyle,
                 ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:<Widget> [
                    FloatingActionButton(
                     backgroundColor: kActiveCardColour,
                      mini:true,
                      child:Icon(
                        FontAwesomeIcons.plus,
                        color: Colors.white,
                      ),
                      onPressed: () {
                       setState(() {
                         weight+=1;
                       }
                       );
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: kActiveCardColour,
                      mini:true,
                      child:Icon(
                          FontAwesomeIcons.minus,
                        color: Colors.white,
                      ),
                      onPressed: (){
                        setState(() {
                          weight-=1;
                        });
                      },
                    ),
                      ],
                ),
               ],
             ),
           ),
           ),
           Expanded(child:
           ResuableCard(colour: kActiveCardColour,
             cardChild:Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children:<Widget> [
                 Text(
                   'AGE',
                   style: kLabelTextStyle,
                 ),
                 Text(
                  age.toString(),
                   style: kNumberTextStyle,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children:<Widget> [
                     FloatingActionButton(
                       backgroundColor: kActiveCardColour,
                       mini:true,
                       child:Icon(
                         FontAwesomeIcons.plus,
                         color: Colors.white,
                       ),
                       onPressed: () {
                         setState(() {
                           age+=1;
                         }
                         );
                       },
                     ),
                     FloatingActionButton(
                       backgroundColor: kActiveCardColour,
                       mini:true,
                       child:Icon(
                         FontAwesomeIcons.minus,
                         color: Colors.white,
                       ),
                       onPressed: (){
                         setState(() {
                           age-=1;
                         });
                       },
                     ),
                   ],
                 ),
               ],
             ),
    ),
           ),
         ],
       ),
       ),
       Container(
        color: Color(0xFFEB1555),
         margin:EdgeInsets.only(top:10),
         width:double.infinity,
         height:kButtomContainerHeight,
         child:TextButton(
           child: Text('Calculate',
               style:TextStyle(
                 color:Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 50,
               ),
           ),
           onPressed:(){
             bmiReturn();
             Navigator.push(
         context,MaterialPageRoute(builder: (context) => BmiCalc()),
           );
           }
         ),
       ),
    ],
      ),
      );
  }
}
