import 'package:flutter/material.dart';
import '../classes/custom_rect_clipper.dart';

class Intro2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.orange.withOpacity(0.0),
        actions: [
          TextButton(
            child: Text('Skip',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [
              Colors.yellow.shade700,
              Colors.white,
            ],
          )
        ),
        alignment: Alignment.bottomCenter,
        child: ClipPath(
          clipper: CustomRectClipper(),
          clipBehavior: Clip.antiAlias,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/1.75,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.yellow,
                  Colors.yellow.shade600,
                  Colors.yellow.shade800,
                  Colors.yellow.shade900
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 75.0, 0.0, 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text( '― STEP 2 ―',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    flex: 1, 
                  ),
                  Expanded(
                    child: Text( 'CHOOSE YOUR\n VARIETY FOOD',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    flex: 2
                  ),
                  Spacer(
                    flex: 1
                  ),
                  Expanded(
                    child: Text( '- ― -',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    flex: 1, 
                  ),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}