import 'package:flutter/material.dart';

import './ui/first_screen.dart';
import './ui/register.dart';
import './ui/my_custom_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(),
      initialRoute: "/",
      routes : {
        // "/" : (context) => FirstScreen(),
        "/" : (context) => MyCustomForm(),
        "/first" : (context) => FirstScreen(),
        "/register" : (context) => DetailScreen(),
        "/main" : (context) => FirstScreen(),
        // "/detail" : (context) => DetailScreen(title: 'Detail',) no need for goto with parameter
      }
    );
  }
}

//TAB AND TABBARVIEW EXAMPLE
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Tabbar"),
//           bottom: TabBar(
//             tabs: <Widget>[
//               Tab(
//                 icon: Icon(Icons.camera),
//                 text:"Camera",
//               ),
//               Tab(
//                 icon: Icon(Icons.add_alarm),
//                 text: "Alarm",
//               ),
//               Tab(
//                 icon: Icon(Icons.account_box),
//                 text: "box",
//               ),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: <Widget>[
//             Icon(Icons.camera),
//             Icon(Icons.add_alarm),
//             Icon(Icons.account_box),
//           ],
//         )
//       ),
//     );
//   }

// }

//STATEFULLWIDGET EXAMPLE
// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return MyHomePageState();
//   }

// }

// class MyHomePageState extends State<MyHomePage> {
//   int counter = 0;
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello World test ...."),
//     ),
//     body: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: <Widget>[
//         Text("$counter"),
//         Text("Value 2"),
//         Text("Value 3"),
//       ],
//     ),
//     floatingActionButton: FloatingActionButton(
//       child: Icon(Icons.add),
//       onPressed: () {
//         setState(() {
//           counter++;        
//         });
//         print("Counter values : $counter");
//       }
//       ),
//     );
//   }
  
// }

// STATELESSWIDGET EXAMPLE
// class MyHomePage extends StatelessWidget {
//   int counter = 0;
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text("Hello World test ...."),
//     ),
//     body: Text("$counter"),
//     floatingActionButton: IconButton(
//       icon: Icon(Icons.add),
//       onPressed: () {
//         counter++;
//         print("Counter values : $counter");
//       }
//       ),
//     );
//   }
// }