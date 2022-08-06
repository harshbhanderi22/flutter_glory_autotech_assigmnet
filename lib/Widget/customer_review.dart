import 'package:flutter/material.dart';
import '../utilities/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Widget/customer_upload_photo.dart';

class CustomerReview extends StatelessWidget {
  const CustomerReview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius:30,
                backgroundImage: AssetImage
                  (kpath+"profile.png"),

              ),
              SizedBox(width: 20,),
              Text("Harsh", style: ktext18_500,)
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
              Text("Worth every penny.",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
          Text("Reviewed in India on 12 October "
              "2019",style: ktext14_400,),
          SizedBox(height: 15,),
          Row(
            children: [
              Icon(FontAwesomeIcons.circleCheck,color: Colors.green,size: 20,),
              SizedBox(width: 15,),
              Text("Certified Buyer, Butibori",
                style: ktext14_500,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              CustomerUpload("cupload1.png"),
              CustomerUpload("cupload2.png"),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(kcustomerreview, style:  TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400
            ),),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("Was this review helpful ?", style: ktext14_500,),
              SizedBox(width: 20,),
              Container(
                width: 70,
                height: 26,
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: kapplybuttondradius
                ),
                child: Center(
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        Text("17",style: ktext14_500_white,),
                        SizedBox(width: 10,),
                        Icon(FontAwesomeIcons
                            .thumbsUp,color: Colors
                            .white,size: 15,)
                      ],
                    )
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: 70,
                height: 26,
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: kapplybuttondradius
                ),
                child: Center(
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        Text("06",style:
                        ktext14_500_white,),
                        SizedBox(width: 10,),
                        Icon(FontAwesomeIcons
                            .thumbsDown,color: Colors
                            .white,size: 15,)
                      ],
                    )
                ),
              ),

            ],
          ),
          SizedBox(height:15,),
          Divider(thickness: 1,color: Colors.black38,),
          SizedBox(height: 15,),



        ],
      ),
    );
  }
}