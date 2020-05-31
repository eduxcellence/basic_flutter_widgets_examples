import 'package:basicflutterwidgetsexamples/bottom_nav_side_drawer_tab_bar/placeholder_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BottomNaivgationDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class BottomNaivgationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavigationState();
}

class BottomNavigationState extends State<BottomNaivgationDemo> {
  int _current_index = 0;

  final List<Widget> _children = [
    PlaceholderWidget(Colors.amber),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.deepPurpleAccent),
    PlaceholderWidget(Colors.indigoAccent),
    PlaceholderWidget(Colors.green)
  ];

  void onTabTapped(int index) {
    setState(() {
      _current_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Botom Navigation Example"),
        leading: IconButton(
          icon: Icon(
            Icons.ac_unit,
          ),
          onPressed: () {},
        ),
      ),
      body: _children[_current_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _current_index,
        type: BottomNavigationBarType.shifting,
        onTap: onTabTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility),
              title: Text("Exercise"),
              backgroundColor: Colors.amber,
              activeIcon: Icon(Icons.voicemail)
              // activeIcon:new Image.asset('images/1.0x/newIcon.png'),
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              title: Text("Wait"),
              backgroundColor: Colors.deepOrange,
              activeIcon: Icon(Icons.voicemail)),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessible),
              title: Text("Rest"),
              backgroundColor: Colors.deepPurpleAccent,
              activeIcon: Icon(Icons.voicemail)),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            title: Text("Diet"),
            activeIcon: Icon(Icons.voicemail),
            backgroundColor: Colors.indigoAccent,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              title: Text("Profile"),
              activeIcon: Icon(Icons.voicemail),
              backgroundColor: Colors.green),
        ],
      ),
    );
  }
}
