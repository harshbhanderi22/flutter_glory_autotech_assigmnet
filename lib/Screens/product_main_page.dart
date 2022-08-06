import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glory_auto_tech/Widget/bullet_point_text.dart';
import 'package:glory_auto_tech/utilities/constant.dart';
import '../Widget/customer_review.dart';
import '../Widget/customer_upload_photo.dart';
import '../Widget/color_option_dot.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int index = 0;
  bool taped = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);

                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CarouselSlider(
                      items: kimgList,
                      options: CarouselOptions(
                        height: 250,
                        aspectRatio: 16 / 9,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        scrollDirection: Axis.horizontal,
                        autoPlayInterval: Duration(seconds: 2),
                      ),
                    ),
                    Image.asset(
                      "assests/images/product_desc.png",
                      width: MediaQuery.of(context).size.width / 2.3,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          ColorOptionDot(kcolor1gradient),
                          ColorOptionDot(kcolor2gradient),
                          ColorOptionDot(kcolor3gradient),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              "+4",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Text(
                                "₹720",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(width: 20,),
                              Text(
                                "3% off",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(255, 90, 104, 1),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),

                          Container(
                            width: 150,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: kapplybuttondradius
                            ),
                            child: Center(
                              child: Text("₹263",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 36
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      height: (MediaQuery.of(context).size.height/2)-35,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: korderlistcontainerradius,
                          gradient: kmainprodcutpage),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text("Product details",
                                 style: TextStyle(
                                   fontSize: 12,
                                   fontWeight: FontWeight.w400
                                 ),
                               ),
                              SizedBox(height: 5,),
                              Text("Colorsoul Gel Nail Lacquer ",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(height: 3,),
                              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 26,
                                    decoration: BoxDecoration(
                                        color: Colors.black87,
                                        borderRadius: kapplybuttondradius
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("4.4",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Icon(FontAwesomeIcons.star,color: Colors.white,size: 14,)
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  Text("(57,164) ratings and 5,609 reviews",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14
                                  ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10,),
                              Divider(thickness: 1,color: Colors.black38,),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("SHADE",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700
                                  ),
                                  ),
                                  Icon(Icons.keyboard_arrow_down_rounded,
                                    size: 30,)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Table(
                               children: [

                                 TableRow(
                                   children: [
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         ColorOptionDot(kcolor4gradient),
                                         ColorOptionDot(kcolor5gradient),
                                         ColorOptionDot(kcolor6gradient),
                                         ColorOptionDot(kcolor7gradient),
                                         ColorOptionDot(kcolor8gradient),
                                         ColorOptionDot(kcolor9gradient),
                                       ],
                                     ),
                                   ]
                                 ),
                                 TableRow(
                                     children: [
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           ColorOptionDot(kcolor29gradient),
                                           ColorOptionDot(kcolor11gradient),
                                           ColorOptionDot(kcolor12gradient),
                                           ColorOptionDot(kcolor13gradient),
                                           ColorOptionDot(kcolor14gradient),
                                           ColorOptionDot(kcolor15gradient),
                                         ],
                                       ),
                                     ]
                                 ),
                                 TableRow(
                                     children: [
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           ColorOptionDot(kcolor16gradient),
                                           ColorOptionDot(kcolor17gradient),
                                           ColorOptionDot(kcolor18gradient),
                                           ColorOptionDot(kcolor19gradient),
                                           ColorOptionDot(kcolor20gradient),
                                           ColorOptionDot(kcolor21gradient),
                                         ],
                                       ),
                                     ]
                                 ),
                                 TableRow(
                                     children: [
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           ColorOptionDot(kcolor22gradient),
                                           ColorOptionDot(kcolor23gradient),
                                           ColorOptionDot(kcolor24gradient),
                                           ColorOptionDot(kcolor25gradient),
                                           ColorOptionDot(kcolor27gradient),
                                           ColorOptionDot(kcolor28gradient),
                                         ],
                                       ),
                                     ]
                                 ),
                               ],
                                ),
                              SizedBox(height: 10,),
                              Divider(thickness: 1,color: Colors.black38,),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("PRODUCT DESCRIPTION",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_down_rounded,
                                    size: 30,)
                                ],
                              ),
                              SizedBox(height: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Text(kdescription, style:  TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),),
                              ),
                              SizedBox(height: 10,),
                              Divider(thickness: 1,color: Colors.black38,),
                              SizedBox(height: 10,),
                              Text("BENEFITS",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(height: 10,),
                              Column(
                                children: [
                                  BulletPointText("Strengthens The Nails "),
                                  BulletPointText("High Color Payoff"),
                                  BulletPointText("Chip Resistant"),
                                  BulletPointText("Long Lasting"),
                                  BulletPointText("Consistent Shade"),

                                ],
                              ),
                              SizedBox(height: 10,),
                              Divider(thickness: 1,color: Colors.black38,),
                              SizedBox(height: 10,),
                              Text("SPECIFICATIONS",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only
                                          (bottom: 5),
                                        child: Text("Item Form:", style: ktext14_700,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only
                                          (bottom: 5),
                                        child: Text("Brand:", style: ktext14_700,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only
                                          (bottom: 5),
                                        child: Text("Model Name:", style: ktext14_700,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only
                                          (bottom: 5),
                                        child: Text("Colour:", style: ktext14_700,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only
                                          (bottom: 5),
                                        child: Text("Shade:", style: ktext14_700,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only
                                          (bottom: 5),
                                        child: Text("Finish Type:", style: ktext14_700,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only
                                          (bottom: 5),
                                        child: Text("Age Range (Description):", style: ktext14_700,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only
                                          (bottom: 5),
                                        child: Text("Liquid Volume:", style: ktext14_700,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only
                                          (bottom: 5),
                                        child: Text("Maximum Shelf Life:", style: ktext14_700,),
                                      ),

                                    ],

                                  ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only
                                    (bottom: 5),
                                  child: Text("Gel", style: ktext14_400,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only
                                    (bottom: 5),
                                  child: Text("Colorsoul", style: ktext14_400,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only
                                    (bottom: 5),
                                  child: Text("True Wear Nail Color", style: ktext14_400,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only
                                    (bottom: 5),
                                  child: Text("Burgundy", style: ktext14_400,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only
                                    (bottom: 5),
                                  child: Text("Reds & Maroons 401", style: ktext14_400,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only
                                    (bottom: 5),
                                  child: Text("Matte", style: ktext14_400,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only
                                    (bottom: 5),
                                  child: Text("Adult", style:
                                  ktext14_400,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only
                                    (bottom: 5),
                                  child: Text("6 Millilitres", style: ktext14_400,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only
                                    (bottom: 5),
                                  child: Text("24 Months", style:
                                  ktext14_400,),
                                ),

                              ],

                            )
                                ],
                              ),
                              SizedBox(height: 10,),
                              Divider(thickness: 1,color: Colors.black38,),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("RATES & REVIEWS",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  Container(
                                    width: 125,
                                    height: 26,
                                    decoration: BoxDecoration(
                                        color: Colors.black87,
                                        borderRadius: kapplybuttondradius
                                    ),
                                    child: Center(
                                      child: Text("Rate us",
                                        style: ktext12_500_white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 26,
                                    decoration: BoxDecoration(
                                        color: Colors.black87,
                                        borderRadius: kapplybuttondradius
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("4.4",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Icon(FontAwesomeIcons.star,color: Colors.white,size: 14,)
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  Text("(57,164) ratings and 5,609 reviews",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text("Image upload by Customers", style:
                              ktext14_500,),
                              SizedBox(height: 10,),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    CustomerUpload("cupload1.png"),
                                    CustomerUpload("cupload2.png"),
                                    CustomerUpload("cupload3.png"),
                                    CustomerUpload("cupload4.png"),
                                    CustomerUpload("cupload5.png"),
                                    CustomerUpload("cupload1.png"),
                                    CustomerUpload("cupload2.png"),
                                    CustomerUpload("cupload3.png"),
                                    CustomerUpload("cupload4.png"),
                                    CustomerUpload("cupload5.png"),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Divider(thickness: 1,color: Colors.black38,),
                              SizedBox(height: 10,),
                              CustomerReview(),
                              CustomerReview(),
                              CustomerReview(),
                              CustomerReview(),
                              CustomerReview(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





