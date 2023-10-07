import 'package:flutter/material.dart';
import 'package:groceryapp_1/Login_2.dart';
import 'package:groceryapp_1/Myhome.dart';
import 'package:groceryapp_1/SingUp.dart';

import '../Login.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      body:
      Column(
        children: [
          SizedBox(height: 30,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:   NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg/220px-Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg"),
            ),
            title: Text("Raju Islam",style: TextStyle(color: Colors.black),),
            subtitle: Text("raju697128@gmail.com",style: TextStyle(color: Colors.black54),),
          ),
          SizedBox(height: 15,),
          Divider(),
          ListTile(
            leading: Icon(Icons.shopping_bag,color: Colors.black,),
            title: Text("Orders",style: TextStyle(color: Colors.black),),
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,),

          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.details,color: Colors.black,),
            title: Text("My Details",style: TextStyle(color: Colors.black),),
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,),

          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.location_on_outlined,color: Colors.black,),
            title: Text("Delivery Address",style: TextStyle(color: Colors.black),),
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,),

          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment,color: Colors.black,),
            title: Text("Payment Methods",style: TextStyle(color: Colors.black),),
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,),

          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.card_giftcard,color: Colors.black,),
            title: Text("Promo Card",style: TextStyle(color: Colors.black),),
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,),

          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications,color: Colors.black,),
            title: Text("Notifications",style: TextStyle(color: Colors.black),),
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,),

          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.help,color: Colors.black,),
            title: Text("Help",style: TextStyle(color: Colors.black),),
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,),

          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.account_circle_outlined,color: Colors.black,),
            title: Text("About",style: TextStyle(color: Colors.black),),
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,),

          ),
          Divider(),
          SizedBox(height: 70,),
          SizedBox(
            height: 50,
            width: 400,
            child:
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login_2()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20,),
                  Icon(Icons.logout,color: Color(0xFF097E77)),
                  SizedBox(width: 70,),
                  Text("Log Out",style: TextStyle(color: Color(0xFF097E77),fontSize: 30),),
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
    );
  }
}
