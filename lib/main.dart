import 'package:auxzon_test/provider/common_provider.dart';
import 'package:auxzon_test/screen/cart_screen/cart_screen.dart';
import 'package:auxzon_test/screen/fav_screen/fav_screen.dart';
import 'package:auxzon_test/screen/food_screen/food_screen.dart';
import 'package:auxzon_test/screen/home_screen/home_screen.dart';
import 'package:auxzon_test/screen/profile_cart.dart/profile_screen.dart';
import 'package:auxzon_test/screen/search_screen/search_screen.dart';
import 'package:auxzon_test/screen/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CommonProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: false,
          textTheme: TextTheme(
              displaySmall: GoogleFonts.poppins(
                fontSize: 15,
                color: Colors.black,
              ),
              displayLarge: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
              displayMedium: GoogleFonts.poppins(
                fontSize: 20,
              )),
        ),
        home: const SplashScreen(),
        routes: {
          SearchScreen.routeName: (BuildContext context) => const SearchScreen(),
          FavScreen.routeName: (BuildContext context) => const FavScreen(),
          CartScreen.routeName: (BuildContext context) => const CartScreen(),
          ProfileScreen.routeName: (BuildContext context) => const ProfileScreen(),
          HomeScreen.routeName: (BuildContext context) => const HomeScreen(),
          FoodScreen.routeName: (BuildContext context) => const FoodScreen(),
        },
      ),
    );
  }
}
