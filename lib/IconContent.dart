import 'package:flutter/material.dart';
class IconContent extends StatelessWidget {
  IconContent({this.txt,this.icn});
  final String txt;
  final IconData icn;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        Icon( icn, size:80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(txt,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white38,
          ),
        ),
      ],
    );

  }
}