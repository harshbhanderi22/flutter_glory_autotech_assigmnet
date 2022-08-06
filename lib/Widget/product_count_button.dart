import 'package:flutter/material.dart';
import '../utilities/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductCount extends StatelessWidget {

  ProductCount({required this.icon,required this.ontap});
  final IconData icon;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        ontap();
      },
      child: Container(
        child: Icon(icon,color: Colors
            .white,size: 12,),
        height: 22,
        width: 22,
        decoration: BoxDecoration(
            gradient: khomescreengradient,
            color: Colors.black,
            borderRadius: kcountbuttondradius
        ),
      )
      ,
    );
  }
}