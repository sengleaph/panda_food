import 'package:flutter/material.dart';

import 'orderlistpage.dart';

void main() {
  runApp(FoodPandaApp());
}

class FoodPandaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrderListPage(),
    );
  }
}

