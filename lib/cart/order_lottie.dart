import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Lotti extends StatefulWidget {
  const Lotti({super.key});

  @override
  _LottiState createState() => _LottiState();
}

class _LottiState extends State<Lotti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Add your close button action here
          },
          icon: Icon(
            Icons.close,
            size: 30,
            color: Colors.black, // Change the icon color to black
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "Order Successfully",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink.shade600,
                    ),
                  ),
                ),
                LottieBuilder.asset("assets/food.json"),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    height: 170,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: LottieBuilder.asset(
                            "assets/loadingpink.json",
                            height: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0), // Add padding here
                          child: Text(
                            "Waiting For Order",
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink.shade600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Icon(Icons.assignment,color: Colors.pinkAccent,size: 30,),
                              SizedBox(width: 10,),
                              Text("Order Summary", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Text("1x Spicy Chichen Burgur(N1)",
                                style: TextStyle(
                                    fontSize: 18
                                ),),
                              Spacer(),
                              Text('\$1.99',
                                style: TextStyle(
                                    fontSize: 18
                                ),
                              ),
                              SizedBox(width: 10,)
                            ],
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Text("Subtotal",
                                style: TextStyle(
                                    fontSize: 18
                                ),),
                              Spacer(),
                              Text('\$1.99',
                                style: TextStyle(
                                    fontSize: 18
                                ),
                              ),
                              SizedBox(width: 10,)
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Text("Delivery",
                                style: TextStyle(
                                    fontSize: 18
                                ),),
                              Spacer(),
                              Text('\$1.23',
                                style: TextStyle(
                                    fontSize: 18
                                ),),
                              SizedBox(width: 10,),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Text("VAT",
                                style: TextStyle(
                                    fontSize: 18
                                ),),
                              Spacer(),
                              Text('\$0.12',
                                style: TextStyle(
                                    fontSize: 18
                                ),),
                              SizedBox(width: 10,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: const BoxDecoration(
                    color: Color(0xFFffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 5.0, //extend the shadow
                        offset: Offset(
                          5.0, // Move to right 5  horizontally
                          5.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),

    );
  }
}
