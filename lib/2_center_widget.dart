import 'package:flutter/material.dart';

/**
 * Created by Akash Kumar  of Eduxcellence on 5/18/2020.
 */
void main() {
  // main function  .....
  runApp(
    Center(
        //Center Widgets
        child: Text(
      // Text Widget  .....
      "Hello Flutter 1.7", // data ....
      style: TextStyle(color: Colors.amber), //style
      textAlign: TextAlign.center, // alignment ....
      textDirection: TextDirection.ltr, // text direction  ....
    )),
  );
}
