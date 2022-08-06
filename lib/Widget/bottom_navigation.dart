import 'package:flutter/material.dart';
import '../utilities/constant.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: korderlistcontainerradius,
      child: BottomAppBar(
        //bottom navigation bar on scaffold
        color:Colors.black,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin: 5, //notche margin between floating button and bottom
        // appbar
        child: SizedBox(
          height: 70,
          child: Row( //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(icon: Icon(Icons.home_outlined, color: Colors.white,),
                onPressed:
                  () {},
              ),
              IconButton(icon: Icon(Icons.list, color: Colors.white,), onPressed: ()
              {},),
              IconButton(icon: Icon(Icons.menu, color: Colors.white,), onPressed:
                  ()
              {},),
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: IconButton(icon: Icon(Icons.folder, color: Colors.white,),
                  onPressed: () {},),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
