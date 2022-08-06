import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glory_auto_tech/utilities/constant.dart';

import '../Widget/product_count_button.dart';

class CreateOrder extends StatefulWidget {
  const CreateOrder({Key? key}) : super(key: key);

  @override
  State<CreateOrder> createState() => _CreateOrderState();
}

class _CreateOrderState extends State<CreateOrder> {
  late String selected_retailer = "Retailer1";
  late int productcount = 2;
  late int productprice = 250;
  late double totalvalue = (productcount * productprice).toDouble();
  late final void Function(BuildContext context) onDismissed;
  List<DropdownMenuItem<String>> getretailerdropdown() {
    List<DropdownMenuItem<String>> dropdownitems = [];

    for (String items in retailerlist) {
      var newdropdown =
          DropdownMenuItem(child: Text("$items"), value: "$items");
      dropdownitems.add(newdropdown);
    }
    return dropdownitems;
  }

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    var doNothing=0;
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.black87,
            elevation: 0.0,
            title: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 24,
                    ),
                  ),
                  Text(
                    "Create Order",
                    style: TextStyle(fontSize: 24),
                  )
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.black87),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: korderlistcontainerradius,
                        color: Colors.white),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Retailer Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            DropdownButtonFormField<String>(
                              value: selected_retailer,
                              items: getretailerdropdown(),
                              onChanged: (value) {
                                setState(() {
                                  selected_retailer = value!;
                                });
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: kinputfieldradius,
                                  borderSide:
                                      BorderSide(color: Colors.black, width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: kinputfieldradius,
                                  borderSide:
                                      BorderSide(color: Colors.black, width: 1),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Retailer",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text(" :- Be Shopping Stopped")
                                        ],
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.close),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(FontAwesomeIcons.locationPin),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text(
                                          "Silicon Shoppers, F4, 1st Floor,  Chandanvan Society,\n Udhna, Surat, Gujarat 394210")
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Icon(FontAwesomeIcons.phone),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text("+91 98452 00320")
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Colors.black38,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Add Location",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.5),
                                      borderRadius: kinputfieldradius),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.5),
                                      borderRadius: kinputfieldradius),
                                  hintText: "Search Location",
                                  label: Text(
                                    "Location",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Chandanvan society",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 17),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.close),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(FontAwesomeIcons.locationDot),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Text("Silicon Shoppers, F4, 1st Floor, "
                                            "Udhna Main Road,\n udhna, Surat, "
                                            "Gujarat - 394210 (India)")
                                      ],
                                    ),
                                  ]),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Tentative order date",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: kinputfieldradius,
                                  border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          child: Icon(Icons.calendar_today),
                                          onTap: () {
                                            _selectDate(context);
                                          },
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("Select Date")
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Add Product",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.5),
                                      borderRadius: kinputfieldradius),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.5),
                                      borderRadius: kinputfieldradius),
                                  hintText: "Search Product",
                                  label: Text(
                                    "Product",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  )),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,bottom:
                              10),
                              child: Container(
                                height: 95,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: korderlistshadow2,
                                ),
                                child: Slidable(
                                  endActionPane:ActionPane(
                                    motion: ScrollMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed:(BuildContext context){},
                                        flex: 1,
                                        backgroundColor: Colors.black87,
                                        foregroundColor: Colors.white,
                                        icon: FontAwesomeIcons.trash,
                                        label: 'Delete',
                                      ),

                                    ],
                                  ),
                                  child: Container(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric
                                        (horizontal: 16),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset("assests/images/product.png"),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "Gel Nail Polish",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Lorem ipsum dolor sit amet.\n ipsum"
                                                " dolor.",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "₹250",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.w500),
                                                  ),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  Text(
                                                    "In Stock",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.w500,
                                                        color: Colors.green),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric
                                              (vertical: 5),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    ProductCount(
                                                        icon: FontAwesomeIcons.minus,
                                                        ontap: () {
                                                          setState(() {
                                                            if (productcount > 0) {
                                                              productcount--;
                                                            }
                                                            totalvalue = (productprice *
                                                                    productcount)
                                                                .toDouble();
                                                          });
                                                        }),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text("$productcount"),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    ProductCount(
                                                        icon: FontAwesomeIcons.plus,
                                                        ontap: () {
                                                          setState(() {
                                                            productcount++;
                                                            totalvalue = (productprice *
                                                                    productcount)
                                                                .toDouble();
                                                          });
                                                        }),
                                                  ],
                                                ),
                                                Text(
                                                  "$totalvalue",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 18),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,bottom:
                              10),
                              child: Container(
                                height: 95,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: korderlistshadow2,
                                ),
                                child: Slidable(
                                  endActionPane:ActionPane(
                                    motion: ScrollMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed:(BuildContext context){},
                                        flex: 1,
                                        backgroundColor: Colors.black87,
                                        foregroundColor: Colors.white,
                                        icon: FontAwesomeIcons.trash,
                                        label: 'Delete',
                                      ),

                                    ],
                                  ),
                                  child: Container(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric
                                        (horizontal: 16),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset("assests/images/product.png"),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "Gel Nail Polish",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Lorem ipsum dolor sit amet.\n ipsum"
                                                    " dolor.",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "₹250",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.w500),
                                                  ),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  Text(
                                                    "In Stock",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.w500,
                                                        color: Colors.green),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric
                                              (vertical: 5),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    ProductCount(
                                                        icon: FontAwesomeIcons.minus,
                                                        ontap: () {
                                                          setState(() {
                                                            if (productcount > 0) {
                                                              productcount--;
                                                            }
                                                            totalvalue = (productprice *
                                                                productcount)
                                                                .toDouble();
                                                          });
                                                        }),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text("$productcount"),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    ProductCount(
                                                        icon: FontAwesomeIcons.plus,
                                                        ontap: () {
                                                          setState(() {
                                                            productcount++;
                                                            totalvalue = (productprice *
                                                                productcount)
                                                                .toDouble();
                                                          });
                                                        }),
                                                  ],
                                                ),
                                                Text(
                                                  "$totalvalue",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 18),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 100,)
                          ],
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
