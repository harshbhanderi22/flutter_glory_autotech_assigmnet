import 'package:flutter/material.dart';
import '../utilities/constant.dart';

class order_track_container extends StatelessWidget {

  order_track_container({required this.gradient,required this.order_count,
  required this.fontcolor});

  late final  Gradient gradient;
  late final int order_count;
  late final Color fontcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 35.0,
      width: MediaQuery.of(context).size.width/3.5,
      decoration:  BoxDecoration(
          color: Colors.black,
          borderRadius: ktaskcontainerradius,
          gradient:  gradient,
          boxShadow: kordertrackshadow
      ),
      child: Text(
        "($order_count)",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: fontcolor,
            fontWeight: FontWeight.w700,
            fontSize: 16.0
        ),
      ),

    );
  }


}
