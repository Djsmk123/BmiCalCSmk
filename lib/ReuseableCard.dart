// ignore: camel_case_types, must_be_immutable
import 'package:flutter/cupertino.dart' show BorderRadius, BoxDecoration, BuildContext, Color, Container, EdgeInsets, IconData, StatelessWidget, Widget, required;
class ResuableCard extends StatelessWidget {
  ResuableCard({@required this.colour,this.cardChild, IconData icn });
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color:colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
