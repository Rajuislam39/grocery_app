import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int c=5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        title: Text("My Cart",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
        centerTitle: true,
      ),
      body:
      ListView.builder(
        itemCount: 15,
        itemBuilder: (context, i) {
          return

            Column(
              children: [
                SizedBox(
                  width: 500,
                  height: 200,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTXt40tYSKIz2Df5svdMxzlknCsrqNzeZ0QWVekWOjB77eBmGRqYs5-PTC479cs_8TyY8&usqp=CAU",
                          fit: BoxFit.fill, width: 150, height: 150,),
                        SizedBox(width: 30,)
                        ,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 60,),
                            Row(

                              children: [
                                Text("Stawberry", style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),),
                                SizedBox(width: 200,),
                                Icon(Icons.minimize, color: Colors.black,)
                              ],
                            ),
                            Text("5pcs, Price", style: TextStyle(
                                color: Colors.black87),),
                            SizedBox(height: 30,),
                            Row(
                              children: [
                                InkWell(
                                  // autofocus: true,
                                  // focusColor: Colors.white,
                                  splashColor: Colors.white,
                                  onTap: () {
                                    setState(() {
                                      c--;
                                    });
                                  },
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Card(
                                      color: Color(0xFF097E77),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              15)
                                      ),
                                      child: Icon(
                                        Icons.minimize, color: Colors.white,),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    color: Color(0xFF097E77),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Center(child: Text("$c",
                                      style: TextStyle(color: Colors.white,),)),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      c++;
                                    });
                                  },
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Card(
                                      color: Color(0xFF097E77),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              15)
                                      ),
                                      child: Center(child: Icon(
                                        Icons.add, color: Colors.white,)),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 80,),
                                Text("\$5.50"),
                              ],
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],


            );
        }
              )
    );
  }
}
