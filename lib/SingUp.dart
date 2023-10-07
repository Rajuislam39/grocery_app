import 'package:flutter/material.dart';
import 'package:groceryapp_1/Login_2.dart';

class Sing_Up extends StatefulWidget {
  const Sing_Up({super.key});

  @override
  State<Sing_Up> createState() => _Sing_UpState();
}

class _Sing_UpState extends State<Sing_Up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xFF097E77),),
          Padding(
            padding: const EdgeInsets.only(top: 400,left: 50),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 35,),),
                  SizedBox(height: 5,),
                  Text("Enter your credintials to continue",style: TextStyle(color: Colors.white),),
                  SizedBox(height: 20,),
                  Text("Username",style: TextStyle(color: Colors.white,),),
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
                        suffixIcon: Icon(Icons.task_alt,color: Colors.white,),
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
                  Row(
                    children: [
                      Text("By continuing you agree to our",style: TextStyle(color: Colors.white,),),
                      Text("Terms of Service",style: TextStyle(color: Colors.greenAccent,),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("and",style: TextStyle(color: Colors.white,),),
                      Text("Privacy Policy.",style: TextStyle(color: Colors.greenAccent,),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 50,
                    width: 400,
                    child:
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login_2()));
                      },
                      child: Text("Sign Up",style: TextStyle(color: Color(0xFF097E77),fontSize: 25),),
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.black,
                          elevation: 30,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
