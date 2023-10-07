
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:groceryapp_1/Myhome.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Myhome()));
    });
  }

  Widget build(BuildContext context) {
    return     Scaffold(
      backgroundColor: Color(0xFF097E77),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite_outline,size: 25,color: Colors.red,weight:25,),
                SizedBox(width: 10,),
                Text("raju",style: TextStyle(fontSize: 35,color: Colors.white),),
              ],
            ),
            Text("online groceriet",style: TextStyle(color: Colors.white,),)
          ],
        ),
      ),
    );
  }
}
