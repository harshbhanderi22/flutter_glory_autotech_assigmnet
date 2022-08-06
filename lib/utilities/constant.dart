import 'package:flutter/material.dart';

const kpath = "assests/images/";
const ktaskcontainerradius = BorderRadius.only(
  topRight: Radius.circular(15.0),
  bottomLeft: Radius.circular(15.0),
  bottomRight: Radius.circular(15.0),
);

const korderlistcontainerradius = BorderRadius.only(
  topRight: Radius.circular(20),
  topLeft: Radius.circular(20),
);

const kinputfieldradius = BorderRadius.only(
  topRight: Radius.circular(30.0),
  bottomLeft: Radius.circular(20.0),
  bottomRight: Radius.circular(30.0),
);

const kcountbuttondradius = BorderRadius.only(
  topRight: Radius.circular(7.0),
  bottomLeft: Radius.circular(7.0),
  bottomRight: Radius.circular(7.0),
);

const kapplybuttondradius = BorderRadius.only(
  topRight: Radius.circular(25),
  bottomLeft: Radius.circular(25),
  bottomRight: Radius.circular(20),
);

const kfilterbydradius = BorderRadius.only(
  bottomLeft: Radius.circular(20.0),
);

const khomescreengradient = LinearGradient(
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
  colors: [
    Colors.black,
    Colors.black87,
  ],
);

const korderscreengradient = LinearGradient(
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
  colors: [
    Colors.black,
    Colors.black54,
  ],
);

const ktasktrackcontanergradient = LinearGradient(
  begin: Alignment.bottomRight,
  end: Alignment.bottomLeft,
  colors: [
    Color.fromRGBO(185, 185, 185, 1),
    Color.fromRGBO(246, 246, 246, 1),
  ],
);

const kordertracktapgradient = LinearGradient(
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
  colors: [
    Colors.black,
    Colors.black45,
  ],
);

const kfiltergradient = LinearGradient(
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
  colors: [
    Color(0xFFB9B9B9),
    Color(0xFFF6F6F6),
  ],
);

const kfiltercolumgradient = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Color(0xFFB9B9B9),
    Color(0xFFF6F6F6),
  ],
);

const kordertrackshadow = [
  BoxShadow(
    color: Color(0xFF3F3E3E),
    blurRadius: 25,
    spreadRadius: 0.0,
    offset: Offset(0.5, 1.5), // shadow direction:
    // bottom right
  )
];

const kretairdetailsboxshadow = [
  BoxShadow(
    color: Color(0xFFA1A1A1),
    blurRadius: 0,
    spreadRadius: 0,
    offset: Offset(0, 1), // shadow direction:
    // bottom right
  )
];

const korderlistshadow = [
  BoxShadow(
    color: Color(0xFFA1A1A1),
    blurRadius: 0,
    spreadRadius: 0,
    offset: Offset(5, 5), // shadow direction:
    // bottom right
  )
];

const korderlistshadow2 = [
  BoxShadow(
    color: Color(0xFFA1A1A1),
    blurRadius: 5,
    spreadRadius: 3,
    offset: Offset(1, 2), // shadow direction:
    // bottom right
  )
];

const kfilterbyshadow = [
  BoxShadow(
    color: Color(0xFF4B4B4B),
    blurRadius: 5,
    spreadRadius: 3,
    offset: Offset(5, 2), // shadow direction:
    // bottom right
  )
];

const List<String> retailerlist = [
  "Retailer1",
  "Retailer2",
  "Retailer3",
  "Retailer4",
  "Retailer5",
  "Retailer6",
  "Retailer7",
  "Retailer8",
  "Retailer9",
  "Retailer10",
];

const kfilterlistheadingstyle =
    TextStyle(fontWeight: FontWeight.w700, fontSize: 14);

const kcoloroptionshadow = [
  BoxShadow(
    color: Color(0xFFAAABB0),
    blurRadius: 4,
    spreadRadius: 2,
    offset: Offset(2, 3), // shadow direction:
    // bottom right
  )
];

const kcolor1gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(220, 133, 126, 1),
    Color.fromRGBO(150, 80, 72, 1),
  ],
);

const kcolor2gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(225, 165, 146, 1),
    Color.fromRGBO(180, 96, 74, 1),
  ],
);

const kcolor3gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(229, 99, 108, 1),
    Color.fromRGBO(196, 58, 70, 1),
  ],
);
const kcolor4gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(214, 109, 113, 1),
    Color.fromRGBO(175, 49, 55, 1),
  ],
);
const kcolor5gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(226, 148, 134, 1),
    Color.fromRGBO(200, 109, 92, 1),
  ],
);
const kcolor6gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(165, 80, 85, 1),
    Color.fromRGBO(109, 42, 45, 1),
  ],
);
const kcolor7gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(190, 190, 185, 1),
    Color.fromRGBO(136, 119, 125, 1),
  ],
);
const kcolor8gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(211, 207, 177, 1),
    Color.fromRGBO(169, 163, 133, 1),
  ],
);
const kcolor9gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(210, 220, 217, 1),
    Color.fromRGBO(158, 160, 155, 1),
  ],
);
const kcolor10gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(178, 76, 46, 1),

  ],
);
const kcolor11gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(127, 57, 21, 1),
    Color.fromRGBO(183, 163, 117, 1),
  ],
);
const kcolor12gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(220, 133, 126, 1),
    Color.fromRGBO(150, 80, 72, 1),
  ],
);
const kcolor13gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(140, 46, 68, 1),
    Color.fromRGBO(91, 15, 23, 1),
  ],
);
const kcolor14gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(176, 97, 106, 1),
    Color.fromRGBO(130, 24, 44, 1),
  ],
);
const kcolor15gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(128, 111, 59, 1),
    Color.fromRGBO(83, 72, 31, 1),
  ],
);
const kcolor16gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(106, 96, 53, 1),
    Color.fromRGBO(10, 6, 3, 1),
  ],
);

const kcolor17gradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromRGBO(235, 215, 157, 1),
    Color.fromRGBO(172, 159, 107, 1)

  ],
);

const kcolor18gradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromRGBO(216, 193, 109, 1),
    Color.fromRGBO(175, 148, 57, 1)

  ],
);

const kcolor19gradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromRGBO(181, 135, 69, 1),
    Color.fromRGBO(172, 159, 107, 1)

  ],
);

const kcolor20gradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromRGBO(235, 215, 157, 1),
    Color.fromRGBO(146, 90, 31, 1)

  ],
);

const kcolor21gradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromRGBO(186, 161, 141, 1),
    Color.fromRGBO(138, 59, 29, 1)

  ],
);

const kcolor22gradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromRGBO(180, 79, 65, 1),
    Color.fromRGBO(129, 41, 29, 1)

  ],
);

const kcolor23gradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromRGBO(148, 80, 89, 1),
    Color.fromRGBO(59, 19, 13, 1)
  ],
);

const kcolor24gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(87, 36, 22, 1),
    Color.fromRGBO(65, 25, 18, 1),
  ],
);

const kcolor25gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(132, 23, 20, 1),
    Color.fromRGBO(102, 13, 12, 1),
  ],
);

const kcolor26gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(199, 95, 92, 1),
    Color.fromRGBO(139, 18, 17, 1),
  ],
);

const kcolor27gradient = RadialGradient(
  radius: 0.5,
  colors: [
  Color.fromRGBO(171, 89, 70, 1),
    Color.fromRGBO(200, 109, 92, 1),
    Color.fromRGBO(44, 11, 12, 1),
  ],
);

const kcolor28gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(198, 186, 149, 1),
    Color.fromRGBO(182, 165, 124, 1),
  ],
);

const kcolor29gradient = RadialGradient(
  radius: 0.5,
  colors: [
    Color.fromRGBO(253, 146, 163, 1),
    Color.fromRGBO(255, 90, 104, 1),
  ],
);

const kmainprodcutpage = LinearGradient(
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
  colors: [
    Color.fromRGBO(169, 169, 169, 1.0),
    Color.fromRGBO(227, 227, 227, 1.0),
  ],
);

const kdescription = "DeBelle naturally enriched range of Gel Nail Lacquer. "
    "It gives a rich salon shine finish with good staying power and gives a very rich and elegant nails. Enriched with anti-oxidant rich seaweed extract, this gel nail polish helps to promote nail growth and to maintain healthy nails by preventing yellowing of nails.  nail polishes can be used in various nail art concepts. This Gel Nail Polish dries naturally. Paint away with 5 free Gel Nail Lacquer free from toxic chemicals. Get your professional manicure/pedicure right at the comfort of your home with DeBelle range of Gel Nail Lacquer. This nail polish shade is perfect summer nail shade that .... More";

const ktext14_700 = TextStyle(
          fontSize: 14,
  fontWeight: FontWeight.w700
);


const ktext14_400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400
);

const ktext14_500 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500
);

const ktext14_500_white = TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.w500
);


const ktext12_500_white = TextStyle(
    fontSize: 12,
    color: Colors.white,
    fontWeight: FontWeight.w500
);

const ktext18_500 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500
);

final List<Widget> kimgList = [
  Image.asset("assests/images/productmain1.png"),
  Image.asset("assests/images/productmain2.png"),
  Image.asset("assests/images/productmain3.png"),
];

const kcustomerreview = "Very very dim and transparent even after applying 4 "
    "to 5 times. TAKES LONG to dry. Not worth. Looks really bad and ugly. And it's not even too cheap either. Like I've bought nai l polishes from normal shops around the same price and they look so much better and";