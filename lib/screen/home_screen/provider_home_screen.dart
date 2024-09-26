import 'package:auxzon_test/model/food_model.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ProviderHomeScreen extends ChangeNotifier {

  final categories = [
    {'icon': Bootstrap.egg_fried, 'label': 'Rice'},
    {'icon': Icons.fastfood, 'label': 'Snacks'},
    {'icon': Icons.local_bar, 'label': 'Drinks'},
    {'icon': Icons.grid_view, 'label': 'More'},
  ];

  final List<FoodModel> foodModel = [
    FoodModel(
      img: 'assets/images/image-2.jpg',
      name: 'Burger beef \'anjaz\'',
      shop: 'Burger Bas',
      price: '45.0',
      rating: '4.9',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      kcal: "150",
      eTime: "5-10 Min",
    ),
    FoodModel(
      img: 'assets/images/image-6.jpg',
      name: 'Cheese Meat Pizza',
      shop: 'Pizza Store',
      price: '45.0',
      rating: '4.9',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      kcal: "150",
      eTime: "5-10 Min",
    ),
    FoodModel(
      img: 'assets/images/image-7.jpg',
      name: 'Burger beef 22\'anjaz\'',
      shop: 'Burger Bas 22',
      price: '45.0',
      rating: '4.9',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      kcal: "150",
      eTime: "5-10 Min",
    ),
  ];
}
