import 'package:flutter/material.dart';


class FirstScreen extends StatefulWidget {
  @override
  FirstScreenState createState() {
    return FirstScreenState();
  }

}


class FirstScreenState extends State<FirstScreen> {

  int _currentIndex = 0;
  final List<Widget> _children = [ Text('Home'),Text('Notify'),Text('Map'),Text('Profile'),Text('Setup')];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                centerTitle: true,
        
        title: Text("HOME"),

      ),



        body: Center(
          child:_children[_currentIndex]
          
        ), 
      
      
      bottomNavigationBar:new Theme(
    data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Colors.lightBlue,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Colors.red,
        textTheme: Theme
            .of(context)
            .textTheme),
 child: new BottomNavigationBar(
        onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
       currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem( 
            // backgroundColor: Colors.pink,
            
            icon: Icon(Icons.dashboard),
            title: Text("Home")
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text("Notify")
          ),
           new BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text("map")
          ),
            new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile")
          ),
            new BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Setup")
          ),
        ],

      ),
    ),

    );
  }
}