import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glory_auto_tech/Screens/create_order.dart';
import 'package:glory_auto_tech/Screens/product_main_page.dart';

import '../Screens/filter.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
       icon: Icons.add,
      backgroundColor: Colors.black,
      overlayColor: Colors.black54,
      overlayOpacity: 0.90,
        children: [
        SpeedDialChild(
          child: Icon(Icons.note_add_sharp, size: 26,),
          label: "Notes",
        ),
        SpeedDialChild(
            child: Icon(Icons.task_alt, size: 26,),
            label: "Create To Do"
        ),
          SpeedDialChild(
              child: Icon(FontAwesomeIcons.filter, size: 26,),
              label: "Filter Screen",
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Filters();
                }));              }
          ),
          SpeedDialChild(
              child: Icon(FontAwesomeIcons.productHunt, size: 26,),
              label: "Main Product",
              onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) {
    return ProductPage();
    }));              }
          ),
        SpeedDialChild(
            child: Icon(FontAwesomeIcons.cartShopping, size: 26,),
            label: "Create New Order",
            onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) {
    return CreateOrder();
    }));              }

        ),
        SpeedDialChild(
            child: Icon(CupertinoIcons.house_alt, size: 26,),
            label: "Add new Distributer/Retailer"
        )
      ],//icon inside button
    );
  }
}
