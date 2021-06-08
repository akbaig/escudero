import 'package:flutter/material.dart';

class OTP extends StatefulWidget {
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {

  FocusNode myNode;

  @override
  void initState() {
    super.initState();
    myNode = FocusNode();
  }  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DigitFormField(
              text: "1",
            ),
            DigitFormField(
              text: "2",
            ),
            DigitFormField(
              text: "3",
            ),
            DigitFormField(
              text: "4",
            ),
          ],
        ),
      ),
    );
  }

  @override
    void dispose() {
      myNode.dispose();
      super.dispose();
    }
}


class DigitFormField extends StatefulWidget {
  int flex; 
  String text;
  DigitFormField({this.text, this.flex = 1});
  @override
  _CodeFieldState createState() => _CodeFieldState();
}

class _CodeFieldState extends State<DigitFormField> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widget.flex,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: widget.text,
            hintStyle: TextStyle(
              color: Colors.grey,
            )
          )
        ),
      ),
    );
  }
}