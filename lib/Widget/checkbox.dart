import 'package:flutter/material.dart';

class CheckBoxes extends StatefulWidget {

  CheckBoxes(this.label);
  final String label;
  @override
  State<CheckBoxes> createState() => _CheckBoxesState();
}
bool check=false;
class _CheckBoxesState extends State<CheckBoxes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: CheckboxListTile(
        title: Text(widget.label),
        value: check,
        activeColor: Colors.black,
        onChanged: (newValue) {
          setState(() {
            check = newValue!;
          });
        },
        controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
      ),
    );
  }
}
