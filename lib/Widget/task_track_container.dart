import 'package:flutter/material.dart';

import '../utilities/constant.dart';

class task_track_container extends StatelessWidget {
  task_track_container(
      {required this.imagepath, required this.label, required this.count});

  final String imagepath;
  final String label;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: MediaQuery.of(context).size.width / 3.5,
      decoration: BoxDecoration(
        borderRadius: ktaskcontainerradius,
        gradient: ktasktrackcontanergradient,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "$imagepath",
            height: 50.0,
            width: 50.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text("$label",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              )),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "$count",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
