import 'package:flutter/material.dart';

class LifeCyclePage extends StatefulWidget {
  final int initValue;

  const LifeCyclePage({Key key, this.initValue: 0});

  @override
  _LifeCycleWidgetState createState() => _LifeCycleWidgetState();
}

class _LifeCycleWidgetState extends State<LifeCyclePage> {
  int _counter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LifeCyclePage"),
      ),
      body: Center(
        child: FlatButton(
          textColor: Colors.blue,
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
          child: Text('$_counter'),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _counter = widget.initValue;
    print("initState");
  }

  @override
  void didUpdateWidget(LifeCyclePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactive");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}
