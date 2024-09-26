import 'package:auxzon_test/widgwts/bottom_bar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = "/SearchScreen";
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Search Screen",
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
