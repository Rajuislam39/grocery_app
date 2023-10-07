import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  TextEditingController sControlar=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF097E77),
          toolbarHeight: 110,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined,color: Colors.white,),
                  Text("Dhaka, Mirpur",style: TextStyle(color: Colors.white),),
                ],
              ),
              SizedBox(height: 5,),
              SizedBox(
                width: 480,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      //focusColor: Colors.white,
                      // hoverColor: Colors.white,
                      prefixIcon: Icon(Icons.search,),
                      hintText: "Search Store",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      )
                  ),
                ),
              )
            ],
          )

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: 500,
                height: 200,
                child: Card(
                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ04YA1LDOVxHf6Tlgx_vbGodUSTQY_37hnbmaxlC1IEmBphfHk23p9KA_PY_DpYyS8Q&usqp=CAU',
                    fit: BoxFit.fill,),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Exclusive Offer",style: TextStyle(color: Colors.black,fontSize: 30,),),
                  Text("See all",style: TextStyle(color: Colors.green),)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 200,
                    height: 250,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network("data:image/jpeg;base64,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",
                            fit: BoxFit.fill,),
                          SizedBox(height: 10,)
                          ,Text("Organic Bananas",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Text("7pcs, Price",style: TextStyle(color: Colors.black26),),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("\$4.99"),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: Card(
                                  color: Color(0xFF097E77),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Icon(Icons.add,color: Colors.white,),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    height: 250,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Image.network("https://5.imimg.com/data5/NL/FU/MY-48841722/apple-fruit-500x500.jpeg",
                            fit: BoxFit.fill,),
                          SizedBox(height: 10,)
                          ,Text("Organic Bananas",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Text("1kg,Price",style: TextStyle(color: Colors.black26),),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("\$4.99"),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: Card(
                                  color: Color(0xFF097E77),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Icon(Icons.add,color: Colors.white,),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Best Selling",style: TextStyle(color: Colors.black,fontSize: 30,),),
                  Text("See all",style: TextStyle(color: Colors.green),)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 200,
                    height: 250,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTXt40tYSKIz2Df5svdMxzlknCsrqNzeZ0QWVekWOjB77eBmGRqYs5-PTC479cs_8TyY8&usqp=CAU",
                            fit: BoxFit.fill,),
                          SizedBox(height: 10,)
                          ,Text("Stawberry",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Text("5pcs, Price",style: TextStyle(color: Colors.black26),),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("\$5.50"),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: Card(
                                  color:Color(0xFF097E77),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Icon(Icons.add,color: Colors.white,),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    height: 250,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Center(
                            child: Image.network("data:image/jpeg;base64,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",
                              fit: BoxFit.cover,width: 130,height: 130,),
                          ),
                          SizedBox(height: 10,)
                          ,Text("Orange",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Text("1ke,Price",style: TextStyle(color: Colors.black26),),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("\$4.99"),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: Card(
                                  color: Color(0xFF097E77),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Icon(Icons.add,color: Colors.white,),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),




            ],
          ),
        ),
      ),
    );
  }
}
