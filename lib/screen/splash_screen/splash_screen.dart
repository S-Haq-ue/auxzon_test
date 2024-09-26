import 'package:auxzon_test/const_file.dart';
import 'package:auxzon_test/screen/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 2);

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(splashScreenImage), fit: BoxFit.fill, alignment: Alignment.topCenter),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: OvalTopBorderClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: "The Fastest In Delivery ",
                            style: Theme.of(context).textTheme.displayLarge,
                            children: [
                              TextSpan(
                                text: "Food",
                                style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.red),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Text("Our job is to filling your tummy with delicious food and fast delivery",
                          textAlign: TextAlign.center, style: Theme.of(context).textTheme.displaySmall),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SmoothPageIndicator(
                      controller: pageController,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                        dotColor: Colors.black,
                        activeDotColor: Colors.amber,
                        dotHeight: 8,
                        dotWidth: 8,
                        spacing: 3.0,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
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
                          onPressed: () {
                            Navigator.of(context).pushNamed(HomeScreen.routeName);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              "Get Started",
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
          ),
        ],
      ),
    );
  }
}

class OvalTopBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, 50);
    path.quadraticBezierTo(size.width / 4, 0, size.width / 2, 0);
    path.quadraticBezierTo(size.width - size.width / 4, 0, size.width, 50);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
