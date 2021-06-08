import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTP extends StatefulWidget {
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {

  @override
  void initState() {
    super.initState();
  }  
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text.rich(
                TextSpan(
                  text: "Please Enter 6 - Digit Verification Code sent by SMS on your\nMobile Number ",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      text: '(+1)23 456 789',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      )
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ) 
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (int index) => 
                DigitFormField(
                  focusNode: node,
                  text: "${index+1}",
              )), 
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width/1.5,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.orange.shade700,
                        Colors.orange.shade900,
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Next", 
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text.rich(
                TextSpan(
                  text: "Didn't get OTP? ",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      text: 'Resend OTP',
                      style: TextStyle(
                        color: Colors.orange.shade900,
                        decoration: TextDecoration.underline,
                      )
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ) 
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text("2:19",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 30.0),
              child: GestureDetector(
                onTap: () { },
                child: Text("Skip Login",
                  style: TextStyle(
                    color: Colors.orange.shade900,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}


class DigitFormField extends StatefulWidget {
  final int flex; 
  final String text;
  final FocusNode focusNode;
  DigitFormField({this.text, this.flex = 1, this.focusNode});
  @override
  _DigitFormFieldState createState() => _DigitFormFieldState();
}

class _DigitFormFieldState extends State<DigitFormField> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Expanded(
      flex: widget.flex,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextFormField(
          textAlign: TextAlign.center,
          controller: controller,
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counterText: "",
            border: OutlineInputBorder(),
            hintText: widget.text,
            hintStyle: TextStyle(
              color: Colors.grey,
            )
          ),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 14.0,
          ),
          onChanged: (String val) {
            if(val.length == 1)
            {
              if(widget.text != "6")
                widget.focusNode.nextFocus();
              else
                widget.focusNode.unfocus();
            }
          },
          onTap: () {
            int length = controller.text.length;
            if(length == 1)
            {
              controller.selection = TextSelection(baseOffset: 0, extentOffset: length);
            }
          },
        ),
      ),
    );
  }
}