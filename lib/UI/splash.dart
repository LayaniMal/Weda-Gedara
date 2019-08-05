import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/animation.dart';
import 'package:weda_gedara/Componants/colors.dart';
import 'package:weda_gedara/UI/signup.dart';

class Splash extends StatefulWidget{
  @override
  State createState()=>SplashState();
}
class SplashState extends State<Splash> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(duration: new Duration(seconds: 3),vsync: this);
    animation = new CurvedAnimation(parent: controller, curve: Curves.fastLinearToSlowEaseIn);
    animation.addListener((){
      this.setState((){});
    });
    animation.addStatusListener((AnimationStatus status){
      if(status == AnimationStatus.completed) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => (SignUp())),
        );
      }
    });
    controller.forward();
  }

  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Center(
      //backgroundColor: Colors.black,
      child:Stack(
        fit: StackFit.expand,

        children: <Widget>[

          Container(
            decoration: BoxDecoration(color:kGreenColor1),
            // decoration: BoxDecoration(color: Colors.black87),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Image(
                  image: AssetImage("assets/logoNew.png"),
                  width: animation.value*200.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
