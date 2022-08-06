import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glory_auto_tech/Screens/Home.dart';
import 'package:glory_auto_tech/Screens/product_main_page.dart';
import 'package:glory_auto_tech/Screens/filter.dart';
import 'package:glory_auto_tech/Widget/floating_button.dart';
import 'package:glory_auto_tech/Widget/bottom_navigation.dart';
import 'Screens/create_order.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([ ]);
    return MaterialApp(
      home: Scaffold(
        body:Filters(),
      ),
      theme: ThemeData(
         fontFamily: 'Roboto'
      ),
      debugShowCheckedModeBanner: false,
       routes: {
        '/home':(context)=>home(),
        '/createorder': (context)=> CreateOrder(),
         '/filter': (context)=> Filters(),
         '/productpage': (context)=> ProductPage(),
      },
    );
  }
}
