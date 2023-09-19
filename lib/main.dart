import 'package:flutter/material.dart';
import 'package:foodpanda/cart/order_lottie.dart';

import 'cart/orderlistpage.dart';

void main() {
  runApp(FoodPandaApp());
}

class FoodPandaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Lotti(),
    );
  }
}

