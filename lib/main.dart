import 'dart:developer' as developer;

import 'package:flutter/material.dart';

import 'NewRoute.dart';
import 'english_words.dart';
import 'lifecycle.dart';
import 'state_managed.dart';
import 'pointer_page.dart';
import 'notification_page.dart';
import 'eventbus_page.dart';
import 'animation_page.dart';
import 'base_page.dart';
import 'animation2_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      routes: {"new_route": (context) => NewRoute()},
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            EnglishWordsWedget(),
            Image(
              image: AssetImage("assets/lake.jpg"),
              width: 50,
              height: 50,
            ),
            RaisedButton(
                child: Text("base page"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BasePage();
                  }));
                }),
            RaisedButton(
                child: Text("navigate to new Page - stateless page"),
                textColor: Colors.blue,
                onPressed: () {
//                Navigator.push(context, MaterialPageRoute(builder: (context){
//                  return NewRoute();
//                }));
                  Navigator.pushNamed(context, "new_route");
                }),
            RaisedButton(
                child: Text("go to lifecycle- - stateful page"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LifeCyclePage();
                  }));
                }),
            RaisedButton(
                child: Text("StateManagedPage"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return StateManagedPage();
                  }));
                }),
            RaisedButton(
                child: Text("PointerPage"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PointerPage();
                  }));
                }),
            RaisedButton(
                child: Text("Notification"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NotificationPage();
                  }));
                }),
            RaisedButton(
                child: Text("EventbusWidgetPage"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return EventbusWidgetPage();
                  }));
                }),
            RaisedButton(
                child: Text("AnimationPage"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AnimationPage();
                  }));
                }),
            RaisedButton(
                child: Text("AnimationPage2"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Animation2Page();
                  }));
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _incrementCounter() {
    setState(() {
      // print in Dart DevTools
      developer.log('main.dart', name: '============>>>>> debug information');

      // print in "Run Tab"
      print("============>>>>>  hello log");

      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
}
