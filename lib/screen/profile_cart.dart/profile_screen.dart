import 'package:auxzon_test/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "/ProfileScreen";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Profile Screen",
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
