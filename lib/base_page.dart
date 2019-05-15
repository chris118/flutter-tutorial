import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {

  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BasePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LifeCyclePage"),
      ),
      body: new Center(
        child: Text("hello"),
      ),
    );
  }
}
