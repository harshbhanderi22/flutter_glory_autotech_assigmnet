import 'package:flutter/material.dart';
import 'package:glory_auto_tech/Widget/checkbox.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utilities/constant.dart';

class Filters extends StatefulWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          gradient: kfiltergradient,
                          borderRadius: kfilterbydradius,
                          boxShadow: kfilterbyshadow),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Filter by",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            IconButton(onPressed: (){
                              Navigator.pop(context);
                              
                            }, icon: Icon
                              (FontAwesomeIcons.xmark),),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 13,
                              width: MediaQuery.of(context).size.width /2.5,
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Text("Product Categories",
                                    style: kfilterlistheadingstyle),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 1.20,
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                  gradient: kfiltercolumgradient,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Text("Price Range",
                                        style: kfilterlistheadingstyle),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Text("Date",
                                        style: kfilterlistheadingstyle),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Text("Retailer",
                                        style: kfilterlistheadingstyle),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Text("Location",
                                        style: kfilterlistheadingstyle),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 1.1,
                                  width: MediaQuery.of(context).size.width / 1.70,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        CheckBoxes("Nail Polish"),
                                        CheckBoxes("Regular nail polish"),
                                        CheckBoxes("Matte nail polish"),
                                        CheckBoxes("Glitter nail polish"),
                                        CheckBoxes("Acrylic nail polish"),
                                        CheckBoxes("Gel nail polish"),
                                        CheckBoxes("PolyGel nail polish"),
                                        CheckBoxes("Breathable nail polish"),
                                        CheckBoxes("2 Combo nail polish"),
                                        CheckBoxes("3 Combo nail polish"),
                                        CheckBoxes("6 Combo nail polish"),
                                        CheckBoxes("Chip-resistant nail polish"),
                                        CheckBoxes("Longwear nail polish"),
                                        CheckBoxes("Quick dry nail polish"),
                                        CheckBoxes("Dip Powder nail polish"),
                                        CheckBoxes("Shellac polish"),

                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: MediaQuery.of(context).size.height /10,
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Clear All",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  Container(
                    width: 240,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: kapplybuttondradius
                    ),
                    child: Center(
                      child: Text("Apply",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 18
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
