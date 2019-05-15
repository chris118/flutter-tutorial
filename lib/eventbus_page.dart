import 'package:flutter/material.dart';
import 'EventBus.dart';

class EventbusWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("NotificationPage")),
        body: Center(
          child: EventWidget(),
        ));
  }
}

class EventWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EventState();
  }
}

class _EventState extends State<EventWidget> {
  String _msg = "";
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
//            crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_msg),
            Builder(
              builder: (context) {
                return  RaisedButton(
                  child: Text("Send event"),
                  onPressed: (){
                    if(mounted){
                      print("bus.emit");
                      bus.emit("login", "i am event");
                    }
                  },);
              },
            ),

          ],
        ));
  }

  @override
  void initState() {
    super.initState();

    print("initState");
    bus.on("login", (arg) {
      print("bus.on");
      if(mounted){
        setState(() {
          _msg = arg;
        });
      }
    });
  }
}