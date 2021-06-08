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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DigitFormField(
              focusNode: node,
              initialFocus: true,
              text: "1",
            ),
            DigitFormField(
              focusNode: node,
              text: "2",
            ),
            DigitFormField(
              focusNode: node,
              text: "3",
            ),
            DigitFormField(
              focusNode: node,
              text: "4",
            ),
          ],
        ),
      ),
    );
  }
}


class DigitFormField extends StatefulWidget {
  final bool initialFocus;
  final int flex; 
  final String text;
  final FocusNode focusNode;
  DigitFormField({this.text, this.flex = 1, this.focusNode, this.initialFocus = false});
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
  Widget build(BuildContext context) {

    return Expanded(
      flex: widget.flex,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextFormField(
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
          onChanged: (String val) {
            if(val.length == 1)
            {
              if(widget.text != "4")
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