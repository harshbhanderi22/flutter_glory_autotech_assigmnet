import 'package:flutter/material.dart';
import '../utilities/constant.dart';

class CustomerUpload extends StatelessWidget {

  CustomerUpload(this.imagename);
  final String imagename;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: ktaskcontainerradius
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Image.asset(kpath+imagename),
        ),
      ),
    );
  }
}
