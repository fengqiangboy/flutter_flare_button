import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimationWidget(),
    );
  }
}

class AnimationWidget extends StatefulWidget {
  @override
  _AnimationWidgetState createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget> {
  String _animationName = 'Idle';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: GestureDetector(
          onDoubleTap: _onTap,
          child: FlareActor(
            "asset/button.flr",
            animation: _animationName,
          ),
        ),
      ),
    );
  }

  void _onTap() {
    print("tap");
    if (_animationName == 'Idle' || _animationName == 'Restart') {
      _animationName = 'Loading';
    } else {
      _animationName = 'Restart';
    }

    setState(() {});
  }
}
