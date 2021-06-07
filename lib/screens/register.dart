import 'package:flutter/material.dart';


class Register extends StatefulWidget {

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> { 
  List<DropdownMenuItem<String>> ccList = [];  

  @override
  void initState() {
    for(int i = 1; i < 100; i++)
    {
      ccList.add(DropdownMenuItem<String>(
        value: i.toString(),
        child: Text("+$i"),
      ));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Form(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width/1.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                          border: OutlineInputBorder(),
                          filled: true,
                          hintText: "+92",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 14.0,
                          ),
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 14.0,
                        ),
                        icon: Icon(Icons.keyboard_arrow_down_rounded),
                        items: ccList,
                        onChanged: (int) { },
                      ),
                      flex: 4
                    ),
                    Spacer(
                      flex: 1
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                          border: OutlineInputBorder(),
                          filled: true,
                          hintText: "0123456789",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 14.0,
                          )
                        ),
                        onChanged: (int) { },
                      ),
                      flex: 9
                    ),
                  ],
                ), 
              ),
            ),
            GestureDetector(
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
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text("Continue with",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width/1.5,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue.shade600,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton(
                  child: Image.asset(
                    "assets/facebook.png",
                    scale: 1.25,
                  ),
                  onPressed: () { },
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                width: MediaQuery.of(context).size.width/1.5,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue.shade400,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton(
                  child: Image.asset(
                    "assets/google.png",
                    scale: 1.25,
                  ),
                  onPressed: () { },
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Text.rich(
                TextSpan(
                  text: "By signing up, you confirm that you have read & agree to our\ncompany's ",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Privacy Policy ',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      )
                    ),
                    TextSpan(
                      text: '& ',
                    ),
                    TextSpan(
                      text: 'Terms and Conditions',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      )
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ) 
            ),
          ],
        ),
      ),
    );
  }
}