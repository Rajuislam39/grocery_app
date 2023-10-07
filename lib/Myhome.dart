import 'package:flutter/material.dart';
import 'package:groceryapp_1/Login.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: SafeArea(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
              height: double.infinity,
         color: Color(0xFF097E77),),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Welcome",style: TextStyle(color: Colors.white,fontSize: 60,),),
                      Text("to our store",style: TextStyle(color: Colors.white,fontSize: 60,),),
                      SizedBox(height: 15,),
                      Text("Ger your groceries in as fast as one hour",style: TextStyle(color: Colors.white,fontSize: 20),),
                      SizedBox(height: 45,),
                      SizedBox(
                        height: 50,
                        width: 400,
                        child:
                        ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                          },
                            child: Text("Get Started",style: TextStyle(color: Color(0xFF097E77),fontSize: 30),),
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black,
                            elevation: 30,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            )
                          ),),
                      ),
                      SizedBox(height: 200,),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}
