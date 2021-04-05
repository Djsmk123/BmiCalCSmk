import 'package:bmicalculatorgui/constants.dart';
import 'package:bmicalculatorgui/inputPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'BmiCalcuations.dart';
class BmiCalc extends StatefulWidget {
  @override
  _BmiCalcState createState() => _BmiCalcState();
}
class _BmiCalcState extends State<BmiCalc> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF0A0E21),
        accentColor: Colors.purple,
        textTheme:TextTheme (
          // ignore: deprecated_member_use
          body1:TextStyle(color: Color(0xFFFFFFFF)),
        ),
      ),
      home:Scaffold(
    appBar: AppBar(
    title: Text('Result',
      style: kNumberTextStyle,
    ),
    ),
        body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 50),
            Padding(padding:EdgeInsets.all(15.0),
            child:Expanded(
           child: Container(
           color: kActiveCardColour,
            child:Column(
             mainAxisAlignment:MainAxisAlignment.center,
              children:<Widget> [
                SizedBox(height:10),
                Text(category,
                style: TextStyle(
                  color: Colors.green,
                ),
                ),
              SizedBox(
                height: 50,
              ),
              Text( bmi.toStringAsFixed(1),
                style:kNumberTextStyle,
              ),
                SizedBox(
                  height: 50,
                ),
                Text(msg,
                  style:kLabelTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
       ),
            ),
            ),
            SizedBox(height: 50),
            Container(
              color: Color(0xFFEB1555),
              margin:EdgeInsets.only(top:10),
              width:double.infinity,
              height:kButtomContainerHeight,
              child:TextButton(
                  child: Text('Re-Calculate',
                    style:TextStyle(
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                  onPressed:(){
                    Navigator.push(
                    context,MaterialPageRoute(builder: (context) => InputPage()),
                  );
                  }
              ),
            ),
          ],
        ),
      ),

    );
  }
}
