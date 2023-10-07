import 'package:flutter/material.dart';
import 'package:groceryapp_1/Login_2.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF097E77),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 450,
            decoration: BoxDecoration(
            shape: BoxShape.circle
          ),
            child: Image.network(
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXe_ODpu6-D_hU93Ahp91Vel5Lxq45ac5VCfVAGttfIS5yPRJxT-tWj5WdYOlVDMHCPu0&usqp=CAU",fit: BoxFit.cover),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 500,left: 50),
          child:
          Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Get your groceries ",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                Text("with raju ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                SizedBox(
                  height: 50,
                  width: 400,
                  child:
                  TextField(
                    cursorColor: Colors.white,
                    maxLength: 9,
                    autofocus: true,
                    style: TextStyle(
                        color: Colors.white),
                    decoration: InputDecoration(
                     // hoverColor: Colors.white,
                      //fillColor: Colors.white,
                      //prefixText: "+880",
                     // prefixStyle: TextStyle(color: Colors.white),
                     // hintText:"+880",
                      prefixText: "+880",
                      hintStyle: TextStyle(color: Colors.white),
                      focusColor: Colors.white,
                      prefixIcon: Icon(Icons.call,color: Colors.white,)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Login_2())
                        );
                      }, child: Text("Next",style: TextStyle(color: Colors.white),)),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text("Or connect with social media",style: TextStyle(color: Colors.white,),),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  width: 400,
                  child: ElevatedButton(
                    onPressed: (){

                    },
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("G",style: TextStyle(color: Color(0xFF097E77),fontSize: 40),),
                        SizedBox(width: 30,),
                        Text("Continue with Google",style: TextStyle(color: Color(0xFF097E77),fontSize: 20),),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black,
                        elevation: 30,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),),
                ),
                SizedBox(height: 30,),
                SizedBox(
                  height: 50,
                  width: 400,
                  child: ElevatedButton(
                    onPressed: (){

                    },
                    child:
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    Text("f",style: TextStyle(color: Color(0xFF097E77),fontSize: 40),),
        SizedBox(width: 30,),
        Text("Continue with Facebook",style: TextStyle(color: Color(0xff239B56),fontSize: 20),),
      ],
    ),
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
