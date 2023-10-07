

import 'package:flutter/material.dart';
import 'SingUp.dart';
import 'body/Bodyp.dart';

class Login_2 extends StatefulWidget {
  const Login_2({super.key});

  @override
  State<Login_2> createState() => _Login_2State();
}

class _Login_2State extends State<Login_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xFF097E77),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,top: 400),
            child: Container(child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Loging",style: TextStyle(color: Colors.white,fontSize: 35),),
                SizedBox(height: 5,),
                Text("Enter your emails and password",style: TextStyle(color: Colors.white),),
                SizedBox(height: 20,),
                Text("Email",style: TextStyle(color: Colors.white,),),
                SizedBox(
                  width: 400,
                  height: 50,
                  child: TextField(
                    cursorColor: Colors.white,
                    //maxLength: 9,
                    autofocus: true,
                    style: TextStyle(
                      //backgroundColor: Colors.white,
                        color: Colors.white),
                    decoration: InputDecoration(
                      // hoverColor: Colors.white,
                      //fillColor: Colors.white,
                      //prefixText: "+880",
                      // prefixStyle: TextStyle(color: Colors.white),
                      // hintText:"+880",
                        //prefixText: "+880",
                        hintStyle: TextStyle(color: Colors.white),
                        focusColor: Colors.white,
                       // prefixIcon: Icon(Icons.call,color: Colors.white,)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Password",style: TextStyle(color: Colors.white,),),
                SizedBox(
                  width: 400,
                  height: 50,
                  child: TextField(
                    obscuringCharacter: "*",
                    obscureText: true,
                    cursorColor: Colors.white,
                    maxLength: 8,
                    autofocus: true,
                    style: TextStyle(
                      //backgroundColor: Colors.white,
                        color: Colors.white),
                    decoration: InputDecoration(
                      // hoverColor: Colors.white,
                      //fillColor: Colors.white,
                      //prefixText: "+880",
                      // prefixStyle: TextStyle(color: Colors.white),
                      // hintText:"+880",
                        //prefixText: "+880",
                        hintStyle: TextStyle(color: Colors.white),
                        focusColor: Colors.white,
                        suffixIcon: Icon(Icons.remove_red_eye,color: Colors.white,)
                        //prefixIcon: Icon(Icons.call,color: Colors.white,)
                    ),
                  ),
                ),
                SizedBox(height:15,),
                SizedBox(
                  width: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password?",style: TextStyle(color: Colors.white,),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  width: 400,
                  child:
                  ElevatedButton(
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Bodyp()));
                    },
                    child: Text("Log in",style: TextStyle(color: Color(0xFF097E77),fontSize: 25),),
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black,
                        elevation: 30,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don`t have an account?",style: TextStyle(color: Colors.white,),),
                      TextButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Sing_Up())
                        );
                      }, child: Text("Singup",style: TextStyle(color: Colors.greenAccent),)),
                    ],
                  ),
                ),
              ],
            )),
          ),

        ],
      ),
    );
  }
}
