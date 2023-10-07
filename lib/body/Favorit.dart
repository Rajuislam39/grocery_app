import 'package:flutter/material.dart';

class Favorit extends StatefulWidget {
  const Favorit({super.key});

  @override
  State<Favorit> createState() => _FavoritState();
}

class _FavoritState extends State<Favorit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Favorite",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),

      ),
      body:
      ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  leading: Image.network("https://www.bigbasket.com/media/uploads/p/l/265702-8_2-sprite-soft-drink-lime-flavoured.jpg"
                    ,width: 100,height: 100,fit: BoxFit.fill,),
                  title: Text("Sprite",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  subtitle: Text("355ml, price",style: TextStyle(color: Colors.black54),),
                  trailing: Text("\$1.50    >",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(),
                )
              ],
            );
          }),
    );
  }
}
