
import 'dart:html';

import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;

  BmiResultScreen({
      @required this.result, @required this.isMale, @required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
/*
        //     كده كده بيرجع لو انا عاوز اعمله رجوع انا واغير شكل الباطون اعمل دي
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },

            icon: Icon(
                Icons.keyboard_arrow_left
            )
        ),

 */

        title: Text('Bmi Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale? 'Male' : 'Female'}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Text(
              'Result : $result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
