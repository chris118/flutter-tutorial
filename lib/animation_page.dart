import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {

  @override
  _AnimationWidgetState createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationPage>  with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;
  Animation _animation2;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        duration: const Duration(seconds: 3),
        vsync: this);
    
    _animation = Tween(begin: 0.0, end: 300.0).animate(_animationController)
    ..addListener(() {
      setState(() {

      });
    });

    _animation2 =  Tween(begin: 0.0, end: 150.0).animate(_animationController);

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LifeCyclePage"),
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            Image.asset("assets/lake.jpg",
                width: _animation.value,
                height: _animation.value
            ),

            //使用AnimatedWidget简化
            // 或者使用AnimatedBuilder，不需要 addListenner ---> setState
            AnimatedBuilder(
              animation: _animation2,
              builder: (context, child){
                return  Image.asset("assets/lake.jpg",
                    width: _animation2.value,
                    height: _animation2.value
                );
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
