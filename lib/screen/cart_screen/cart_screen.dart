import 'package:auxzon_test/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static const routeName = "/CartScreen";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Cart Screen",
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
