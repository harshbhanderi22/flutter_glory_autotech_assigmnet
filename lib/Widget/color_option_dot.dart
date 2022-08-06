import 'package:flutter/material.dart';
import '../utilities/constant.dart';

class ColorOptionDot extends StatefulWidget {
ColorOptionDot(this.Gradient);

   final Gradient;
  @override
  State<ColorOptionDot> createState() => _ColorOptionDotState();
}
bool taped = false;
class _ColorOptionDotState extends State<ColorOptionDot> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: taped ?  Border.all(color: Colors.black38,
              width: 2) : null,
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: GestureDetector(
            onTap: (){
              setState((){
                taped = !taped;
              });
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                gradient: widget.Gradient,
                boxShadow: kcoloroptionshadow,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
