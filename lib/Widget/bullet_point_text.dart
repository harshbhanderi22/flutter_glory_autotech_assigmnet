import 'package:flutter/material.dart';

class BulletPointText extends StatelessWidget {

  BulletPointText(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("• "),
          Expanded(
            child: Text("$text",
              style:
              TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400
              ),),
          ),
        ],
      ),
    );
  }
}