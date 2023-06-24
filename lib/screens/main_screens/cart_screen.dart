
import 'package:flutter/material.dart';
import 'package:zippy_consumer_app/widget/custom_bottom_navigation_bar.dart';

import '../../utils/custom_icons.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      body: Center(child: Text("cart screen"),),
    );
  }
}
