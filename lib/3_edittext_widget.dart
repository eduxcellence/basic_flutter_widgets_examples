import 'package:flutter/material.dart';

void main() {
  //Entry Point of our Application

  /*    ........ IMPORTANT FOR ANY MATERIAL WIDGET  .........
  *     first you cannot run Direct TextField Widget in runApp
  *     second you need material widget to use TextField  i.e; MaterialApp
  *     third you again need material widget to call inside state widget
  *    .... material widget like Scafold , Material , Card , Dialog etc..
  */
  runApp(//Inflates the widgets and show on the App Screen
      MaterialApp(
    home: EditTextExample(),
    debugShowCheckedModeBanner: false, //remnove side flag banner debug
  ));
}

class EditTextExample extends StatefulWidget {
  @override
  EdiTtextState createState() => EdiTtextState();
}

class EdiTtextState extends State<EditTextExample> {
  var name;
  var textValue;

  //declaring and initializing object of TextEditingController()
  TextEditingController nameListener = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    nameListener.addListener(() {
      //listener from second way
      if (nameListener.text.toString().contains("aka")) {
        print("Suggested Name : Akash");
        textValue = "Suggested Name : Akash";
      } else {
        textValue = "Suggested name: ${nameListener.text.toString()}";
        print("Suggested name: ${nameListener.text.toString()}");
      }
    });
    return Scaffold(
      //in scaflod widget we can decalre app bar
      appBar: AppBar(
        title: Text(
          "TextField Example",
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        //for multiple widget column wise
        children: <Widget>[
          SizedBox(height: 50), //widget provide spaced vertically/horizontally
          TextField(
            decoration: InputDecoration(hintText: " Enter Your Name "),
            cursorColor: Colors.black,
            controller: nameListener, // second way of getting text controller

            onChanged:
                (textFieldvalue) // first way of getting textfield change value
                    =>
                    setState(() {
              // Whenever you change the internal state of a State object,
              // make the change in a function
              name = textFieldvalue;
            }),
          ),
          SizedBox(height: 50),
          Text("TextInput : $name",
              style: TextStyle(fontSize: 25.0, color: Colors.deepOrange))
        ],
      ),
    );
  }
}
