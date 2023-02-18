import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {



  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circle CheckBox"),
      ),
      body: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                _value = !_value;
              });
            },
            child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: _value
                    ? Icon(
                  Icons.check,
                  size: 30.0,
                  color: Colors.white,
                )
                    : Icon(
                  Icons.check_box_outline_blank,
                  size: 30.0,
                  color: Colors.blue,
                ),
              ),
            ),
          )),
    );
  }
}