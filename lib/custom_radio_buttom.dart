import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int value = 0;
  Widget CustomRadioButton(String text, int index) {
    return SizedBox(
      width:175, // <-- match_parent
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            value = index;
          });
        },
        child: Text(
          text,
          style: TextStyle(
            color: (value == index) ? Colors.black : Colors.white,
              fontSize: 18.0,
            fontWeight: FontWeight.w500
          ),

        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          // side:
          // BorderSide(color: (value == index) ? Colors.green : Colors.black),
          primary:   (value == index) ? Color(0xFFE5F8FF) : Colors.indigo,
          onPrimary: Colors.white,
        ),

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CustomRadioButton("للإيجار", 1),
        SizedBox(width: 5,),
        CustomRadioButton("للبيع", 2),

      ],
    );
  }
}