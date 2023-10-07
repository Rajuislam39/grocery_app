import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 220,
                    height: 290,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh05qVmAQ9FDkVMAnsK1znRcAadFVAffxp9gdE5_rpZOL3iDXIseLy8omrYiJSAS3XAKM&usqp=CAU",
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
                    width: 220,
                    height: 290,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3pSP35BvWDq-m14sgLjpdva6uhbiXmTuqPv5lFwn0W0laQ8tU1sm3Zbemm88QYcQork4&usqp=CAU",
                            width: 150,height: 150,
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
                  )
                ],
              );
          }),


    );
  }
}
