import 'package:auxzon_test/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class FavScreen extends StatelessWidget {
  static const routeName = "/FavScreen";
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Favorite Screen",
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
