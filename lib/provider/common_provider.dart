import 'package:auxzon_test/screen/cart_screen/cart_screen.dart';
import 'package:auxzon_test/screen/fav_screen/fav_screen.dart';
import 'package:auxzon_test/screen/home_screen/home_screen.dart';
import 'package:auxzon_test/screen/profile_cart.dart/profile_screen.dart';
import 'package:auxzon_test/screen/search_screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CommonProvider extends ChangeNotifier {
  int _currentIndex = 2;
  String _routeName = HomeScreen.routeName;

  final bottomBarIcons = [
    const Icon(
      Icons.search,
    ),
    const Icon(Icons.favorite_border_outlined),
    const Icon(Icons.home_outlined),
    const Icon(Bootstrap.cart3),
    const Icon(Bootstrap.person),
  ];

  int get currentIndex => _currentIndex;
  String get routeName => _routeName;

  set currentIndex(int index) {
    _currentIndex = index;
    moveToThePage();
    notifyListeners();
  }

  void moveToThePage() {
    switch (_currentIndex) {
      case 0:
        _routeName = SearchScreen.routeName;
        notifyListeners();
        break;
      case 1:
        _routeName = FavScreen.routeName;
        notifyListeners();
        break;
      case 2:
        _routeName = HomeScreen.routeName;
        notifyListeners();
        break;
      case 3:
        _routeName = CartScreen.routeName;
        notifyListeners();
        break;
      case 4:
        _routeName = ProfileScreen.routeName;
        notifyListeners();
        break;
      default:
        _routeName = HomeScreen.routeName;
        notifyListeners();
    }
  }
}
