import 'package:flutter/material.dart';
import 'package:glory_auto_tech/Widget/order_track_container.dart';
import 'package:glory_auto_tech/utilities/constant.dart';
import 'package:glory_auto_tech/Widget/floating_button.dart';
import 'package:glory_auto_tech/Widget/bottom_navigation.dart';
import '../Widget/order_list_container.dart';
import '../Widget/task_track_container.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView
            (
            child: Column(
               children: [
                Container(
                  height: MediaQuery.of(context).size.height-78,
                   width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(gradient: khomescreengradient),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 25.0,
                                        backgroundImage: AssetImage(
                                            'assests/images/profilephoto.png'),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        children: [
                                          const Text(
                                            "Hi, Amit",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    246, 246, 246, 1),
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const SizedBox(height: 10.0),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Icon(
                                                Icons.calendar_today,
                                                color: Colors.white,
                                                size: 15.0,
                                              ),
                                              SizedBox(width: 5.00),
                                              Text(
                                                "Dec 18, 2021",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        246, 246, 246, 1),
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.notifications_none,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              "Set Your Work Today!",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  letterSpacing: 1),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  task_track_container(
                                    imagepath: "assests/images/tot"
                                        "altask.png",
                                    label: "Total Task",
                                    count: 30,
                                  ),
                                  task_track_container(
                                    imagepath: "assests/images/tod"
                                        "o.png",
                                    label: "To Do Work",
                                    count: 35,
                                  ),
                                  task_track_container(
                                    imagepath: "assests/images/notes"
                                        ".png",
                                    label: "Notes",
                                    count: 15,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  order_track_container(
                                    gradient: kordertracktapgradient,
                                    order_count: 28,
                                    fontcolor: Colors.white,
                                  ),
                                  order_track_container(
                                    gradient: ktasktrackcontanergradient,
                                    order_count: 15,
                                    fontcolor: Colors.black,
                                  ),
                                  order_track_container(
                                    gradient: ktasktrackcontanergradient,
                                    order_count: 20,
                                    fontcolor: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: (MediaQuery.of(context).size.height/2)-35,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: korderlistcontainerradius,
                            gradient: ktasktrackcontanergradient),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              order_list_container(),
                              order_list_container(),
                              order_list_container(),
                              order_list_container(),
                              order_list_container(),
                              order_list_container(),
                              order_list_container(),
                              order_list_container(),
                              order_list_container(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingButton(),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          bottomNavigationBar: BottomNavigation(),
        ),
      ),
    );
  }
}


