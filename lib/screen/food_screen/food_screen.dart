import 'package:auxzon_test/const_file.dart';
import 'package:auxzon_test/screen/food_screen/provider_food.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';

class FoodScreen extends StatelessWidget {
  static const routeName = "/FoodScreen";
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderFood(),
      child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.97),
          body: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).scaffoldBackgroundColor),
                          onPressed: () {},
                          child: const Icon(
                            Bootstrap.chevron_compact_left,
                            color: Colors.redAccent,
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).scaffoldBackgroundColor),
                          onPressed: () {},
                          child: const Icon(
                            Bootstrap.three_dots,
                            color: Colors.redAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 240,
                      ),
                      Consumer<ProviderFood>(
                        builder: (context, foodProvider, child) {
                          return Container(
                            decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                TextButton(
                                  child: Text(
                                    "-",
                                    style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    debugPrint("-");
                                    foodProvider.decrement();
                                  },
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "${foodProvider.counterValue}",
                                  style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                TextButton(
                                  child: Text(
                                    "+",
                                    style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    debugPrint("${foodProvider.counterValue}");
                                    foodProvider.increment();
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Beef Burger",
                                  style: Theme.of(context).textTheme.displayLarge,
                                ),
                                Text("Cheesy Mazarella", style: Theme.of(context).textTheme.displaySmall),
                              ],
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "\$",
                                  style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.redAccent),
                                  children: [
                                    TextSpan(
                                      text: "6.69",
                                      style: Theme.of(context).textTheme.displayLarge,
                                    )
                                  ]),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "4.8",
                                  style: Theme.of(context).textTheme.displaySmall,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Bootstrap.fire,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "150 Kcal",
                                  style: Theme.of(context).textTheme.displaySmall,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Bootstrap.clock,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "5-10 Min",
                                  style: Theme.of(context).textTheme.displaySmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          child: RichText(
                            text: TextSpan(
                                text:
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt...",
                                style: Theme.of(context).textTheme.displaySmall,
                                children: [
                                  TextSpan(
                                    text: "Read More",
                                    style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.redAccent),
                                  )
                                ]),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.red,
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                "Add to Card",
                                style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(foodProd), fit: BoxFit.fill, alignment: Alignment.topCenter),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
