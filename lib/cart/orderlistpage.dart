import 'package:flutter/material.dart';

class OrderListPage extends StatefulWidget {
  @override
  _OrderListPageState createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  String selectedValue = '1';
  // List<Step> getSteps = ["Step 1", "Step 2", "Step 3"];

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
          title: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Cart\n"
                      "Chicken Pops(Toul Sangkea)",
                  style: TextStyle(
                    fontSize: 20, // Adjust the font size as needed
                    color: Colors.black, // Change the text color to black
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.black, // Change the icon color to black
                ),
              ),
            ),
          ],
          backgroundColor: Colors.white, // Set the background color to white
        ),
        body: Column(
          children: [
            Expanded(
              flex: 10,
              child: Container(
                child: ListView(
                  children: [
                    Container(
                      // child: MyStepper(
                      //     _currentStep=true;
                      // ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 135,
                            width: 400,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(1.0),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                    // offset:0,
                                  ),
                                ]),
                            padding: EdgeInsets.all(5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(9.9),
                                  child: Image.network(
                                    "https://img.freepik.com/premium-vector/express-delivery-social-media-post-pink-scooter-online-delivery-service-home-delivery-with-mask_608547-175.jpg",
                                    height: 100,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Estimated Delivery \n',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors
                                            .black12, // Change text color to white
                                        fontSize: 20,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Sorry, We're closed.",
                                          style: TextStyle(
                                            color: Colors
                                                .black, // Change text color to white
                                            fontSize: 23,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 135,
                            width: 400,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(1.0),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                    // offset:0,
                                  ),
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              // crossAxisAlignment: CrossAxisAlignment.,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 0, right: 22),
                                  child: DropdownButton<String>(
                                    value: selectedValue, // Current selected value
                                    items: <String>['1', '2', '3', '4']
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        selectedValue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Image.network(
                                    "https://i.pinimg.com/236x/c8/4d/1e/c84d1e202914a5b04b648c9f528d27b9.jpg",
                                    height: 250,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'A01. Non Spicy \n',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.pink.shade400,
                                            fontSize: 17,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Chicken Burger ",
                                          style: TextStyle(
                                            color: Colors.pink.shade400,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text("\$4.44"),
                              ],
                            ),
                          ),
                          Container(
                              height: 50,
                              width: 400,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(1.0),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade200,
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      // offset:0,
                                    ),
                                  ]),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'Add more Items',
                                      style: TextStyle(
                                        color: Colors.pink,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  height: 300,
                                  width: 190,
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, top: 5, right: 5, bottom: 0),
                                        child: Image.network(
                                          "https://i.pinimg.com/236x/c8/4d/1e/c84d1e202914a5b04b648c9f528d27b9.jpg",
                                          height: 200,
                                          // fit: BoxFit.contain,
                                        ),
                                      ),
                                      Text(
                                        '\$2.48\nA02. Beef Burger',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                  height: 300,
                                  width: 190,
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, top: 5, right: 5, bottom: 0),
                                        child: Image.network(
                                          "https://4.bp.blogspot.com/-8JAut3R9ick/UU8pu5jFqCI/AAAAAAAAARk/GWSFpotJLWk/s1600/hot-shots-box-productimage.jpg",
                                          height: 200,
                                          // fit: BoxFit.contain,
                                        ),
                                      ),
                                      Text(
                                        '\$10.99\nA01. Set Beef Burger cheese',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                  height: 300,
                                  width: 190,
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, top: 5, right: 5, bottom: 0),
                                        child: Image.network(
                                          "https://i.pinimg.com/236x/fe/8a/82/fe8a821d11269ba7e8ded9432331cd35.jpg",
                                          height: 200,
                                          // fit: BoxFit.contain,
                                        ),
                                      ),
                                      Text(
                                        '\$4.98\nA01. Beef Burger cheese',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                              ],
                            ),
                          ),
                          Container(
                              height: 115,
                              width: 400,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(1.0),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade200,
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      // offset:0,
                                    ),
                                  ]),
                              padding: EdgeInsets.all(5),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'Want free delivery with pro?\n',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors
                                                    .black, // Change text color to white
                                                fontSize: 17,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: "\n"
                                                      "Subscribe from 2.10/month! \nMin. spend applies.",
                                                  style: TextStyle(
                                                    color: Colors
                                                        .black26, // Change text color to white
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Add your onPressed action here
                                      },
                                      child: Text(
                                        "Add To Cart",
                                        style: TextStyle(
                                          color: Colors.pink,
                                        ),
                                      ),
                                    ),
                                  ])),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: RichText(
                                  text: const TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Subtotal',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text(
                                  "\$4.44",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: RichText(
                                  text: const TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Delivery fee\n\nVAT',
                                        style: TextStyle(
                                          // fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text("\$3.35\n\n\$0.30"),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.airplane_ticket_outlined,
                                  color: Colors.pink.shade400,
                                  size: 30,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  // Add your onPressed action here
                                },
                                child: Text(
                                  "Apply a Voucher",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 120,
                            width: 400,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(1.0),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                    // offset:0,
                                  ),
                                ]),
                            padding: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.add_chart_outlined,
                                      size: 30,
                                      color: Colors.pink.shade400,
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Stamp Cards",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            "Awesome! You'll earn 1 reward with \nthis order.",
                                            style: TextStyle(
                                              color: Colors.black26,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 16),
                              ],
                            ),
                          ),
                          Container(
                            height: 110,
                            width: 400,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(1.0),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                    // offset:0,
                                  ),
                                ]),
                            padding: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.restaurant_menu_outlined,
                                      size: 30,
                                      color: Colors.pink.shade400,
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Cutlery",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            "The restaurant will provide cutlery, if\n available.",
                                            style: TextStyle(
                                              color: Colors.black26,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 16),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.green,
                child:  Container(
                    height: 150,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(1.0),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 5,
                            spreadRadius: 2,
                            // offset:0,
                          ),
                        ]),
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Total (VAT)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "\$4.44",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "See price breakdown",
                            style: TextStyle(
                              color: Colors.pink.shade400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your onPressed action here
                              // You can add code to execute when the button is pressed
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink.shade400,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 45,
                              child: Center(
                                child: Text(
                                  'Review payment and address',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            )
          ],
        ));
  }
}
