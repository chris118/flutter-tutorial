import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("NotificationPage")),
        body: Center(
          child: NotificationWidget(),
        ));
  }
}

class NotificationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NotificationState();
  }
}

class _NotificationState extends State<NotificationWidget> {
  String _msg = "";
  @override
  Widget build(BuildContext context) {
    return NotificationListener<MyNotification>(
      child: Container(
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
                    child: Text("Send Notification"),
                    onPressed: (){
                      print("dispatch notify");
                      MyNotification("mesaage!").dispatch(context);
                    },);
                },
              ),

            ],
          )),
      onNotification: (notification) {
        print(notification);
        setState(() {
          _msg += "response notify ! ";
        });
      },
    );
  }
}

class MyNotification extends Notification {
  MyNotification(this.msg);
  final String msg;
}
