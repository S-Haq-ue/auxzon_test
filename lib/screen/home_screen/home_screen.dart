import 'package:auxzon_test/const_file.dart';
import 'package:auxzon_test/screen/food_screen/food_screen.dart';
import 'package:auxzon_test/screen/home_screen/provider_home_screen.dart';
import 'package:auxzon_test/model/food_model.dart';
import 'package:auxzon_test/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);

    return ChangeNotifierProvider(
      create: (context) => ProviderHomeScreen(),
      child: Scaffold(
        body: Stack(
          children: [
            Consumer<ProviderHomeScreen>(builder: (context, providerHomePage, child) {
              return SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: const NeverScrollableScrollPhysics(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    Text(
                                      "Location",
                                      style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "St, Abigael",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall!
                                              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                                        ),
                                        const Icon(
                                          Icons.arrow_drop_down_outlined,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 5),
                                      child: Text(
                                        "Promo buy 1,\nget 1 more!",
                                        style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                                      child: Text(
                                        "Order Now",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(color: Colors.red, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 5),
                                      child: SmoothPageIndicator(
                                        controller: pageController,
                                        count: 2,
                                        axisDirection: Axis.horizontal,
                                        effect: SlideEffect(
                                            spacing: 0,
                                            dotWidth: 30,
                                            dotHeight: 4,
                                            paintStyle: PaintingStyle.fill,
                                            strokeWidth: 05,
                                            dotColor: const Color.fromARGB(255, 188, 188, 188).withOpacity(0.5),
                                            activeDotColor: const Color.fromARGB(255, 255, 255, 255)),
                                      ),
                                    )
                                  ],
                                ),
                                // const SizedBox(
                                //   width: 100,
                                // ),only for tab size
                                Image.asset(homeScreenTitleImage)
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: ListView(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            //filter
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: List.generate(
                                  providerHomePage.categories.length,
                                  (index) {
                                    return FilterContainer(
                                      iconData: providerHomePage.categories[index]['icon'] as IconData,
                                      label: providerHomePage.categories[index]['label'].toString(),
                                    );
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            //Food
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                "Top Rated Food",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: List.generate(
                                    providerHomePage.foodModel.length,
                                    (index) {
                                      return FoodRestoCard(
                                        currentCardData: providerHomePage.foodModel[index],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            //Restaurant
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                "Restaurant near you",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: List.generate(
                                    providerHomePage.foodModel.length,
                                    (index) {
                                      return FoodRestoCard(
                                        currentCardData: providerHomePage.foodModel[index],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
            //search bar
            Positioned(
              top: MediaQuery.of(context).size.height * 0.375,
              right: 20,
              left: 20,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[800],
                  ),
                  hintText: "Search food, restaurant, etc",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: const Color.fromARGB(255, 172, 168, 168)),
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: const BottomBar(),
      ),
    );
  }
}


class FilterContainer extends StatelessWidget {
  final IconData iconData;
  final Image? iconImage;
  final String label;
  const FilterContainer({
    super.key,
    required this.iconData,
    required this.label,
    this.iconImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border.all(
            color: const Color.fromARGB(255, 188, 188, 188).withOpacity(0.5),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: Colors.pink[100],
              child: Icon(
                iconData,
                color: Colors.black87,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              label,
              style:
                  Theme.of(context).textTheme.displaySmall!.copyWith(color: const Color.fromARGB(255, 193, 145, 162)),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodRestoCard extends StatelessWidget {
  final FoodModel currentCardData;
  const FoodRestoCard({
    super.key,
    required this.currentCardData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(FoodScreen.routeName);
        },
        child: Container(
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).scaffoldBackgroundColor,
              border: Border.all(
                color: const Color.fromARGB(255, 188, 188, 188).withOpacity(0.5),
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(currentCardData.img), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                                size: 18,
                              ),
                              Text(
                                "(${currentCardData.rating})",
                                style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w900),
                                textScaler: const TextScaler.linear(0.7),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  currentCardData.name,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(currentCardData.shop),
                    Text(
                      "\$${currentCardData.price}",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
