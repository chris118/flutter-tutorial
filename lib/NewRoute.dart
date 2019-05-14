import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("NewRout"),
       ),
       body: Center(
         child: Text("this is new route"),
       ),
     );
  }
}