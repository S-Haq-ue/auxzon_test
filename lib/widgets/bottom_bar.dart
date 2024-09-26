import 'package:auxzon_test/provider/common_provider.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CommonProvider>(builder: (context, commonProvider, child) {
      return ConvexAppBar(
        items: List.generate(
          commonProvider.bottomBarIcons.length,
          (index) {
            return TabItem(icon: commonProvider.bottomBarIcons[index]);
          },
        ),
        activeColor: Colors.red,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        color: Colors.white,
        curveSize: 0,
        top: 0,
        initialActiveIndex: commonProvider.currentIndex,
        disableDefaultTabController: true,
        onTap: (int i) {
          commonProvider.currentIndex=i;
          Navigator.of(context).pushReplacementNamed(commonProvider.routeName);
        },
      );
    });
  }
}
