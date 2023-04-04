import 'package:flutter/material.dart';
import 'package:marketplace_client_app/core/injector/shared_preference_keys.dart';
import 'package:marketplace_client_app/core/widgets/build_page.dart';
import 'package:marketplace_client_app/features/container/presentation/pages/conainer_screen.dart';
import 'package:marketplace_client_app/features/splash_screen/presentation/pages/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingScreenPageState extends StatefulWidget {
  const OnBoardingScreenPageState({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreenPageState> createState() =>
      _OnBoardingScreenPageState();
}

class _OnBoardingScreenPageState extends State<OnBoardingScreenPageState> {
  final controller = LiquidController();
  bool isLastPage = false;
  @override
  void dispose() {
    //controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 80),
          child: LiquidSwipe(
            enableLoop: false,
            enableSideReveal: isLastPage ? false : true,
            slideIconWidget: isLastPage
                ? null
                : Icon(
                    Icons.arrow_back_ios,
                    color: Theme.of(context).iconTheme.color,
                  ),
            liquidController: controller,
            onPageChangeCallback: (index) {
              setState(() {
                isLastPage = index == 2;
              });
            },
            pages: [
              buildPage(
                  context: context,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  urlImage:
                      Theme.of(context).scaffoldBackgroundColor == Colors.white
                          ? 'assets/4.svg'
                          : 'assets/1.svg',
                  title:
                      'Est ce que vouz ganger d’argent d’une autre application ? ',
                  subtitle:
                      "Gagnez des récompenses en espèces en répondant à des sondages en ligne - n'importe où, n'importe quand !"),
              buildPage(
                  context: context,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  urlImage:
                      Theme.of(context).scaffoldBackgroundColor == Colors.white
                          ? 'assets/5.svg'
                          : 'assets/2.svg',
                  title: 'gagnez 2 dinars dans vos 3 premières minutes',
                  subtitle:
                      "Here you can write the description of the page, to explain someting..."),
              buildPage(
                  context: context,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  urlImage:
                      Theme.of(context).scaffoldBackgroundColor == Colors.white
                          ? 'assets/6.svg'
                          : 'assets/3.svg',
                  title:
                      'compléter des sandages creés par le plus grande societées  ',
                  subtitle:
                      "Here you can write the description of the page, to explain someting..."),
            ],
          ),
        ),
        bottomSheet: isLastPage
            ? TextButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString(
                    SharedPreferenceKeys.showHome,
                    'SHOWHOME',
                  );
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const SplashScreen()));
                },
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)),
                    primary: Colors.white,
                    backgroundColor: Theme.of(context).iconTheme.color,
                    minimumSize: const Size.fromHeight(80)),
                child: const Text(
                  "Get Started",
                  style: TextStyle(fontSize: 24),
                ),
              )
            : Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      child: Text(
                        "SKIP",
                        style:
                            TextStyle(color: Theme.of(context).iconTheme.color),
                      ),
                      onPressed: () {
                        controller.jumpToPage(page: 2);
                      },
                    ),
                    Center(
                      child: AnimatedSmoothIndicator(
                          effect: SlideEffect(
                              activeDotColor:
                                  Theme.of(context).iconTheme.color!),
                          activeIndex: controller.currentPage,
                          count: 3,
                          onDotClicked: (index) => controller.animateToPage(
                                page: index,
                              )),
                    ),
                    TextButton(
                      child: Text(
                        "NEXT",
                        style:
                            TextStyle(color: Theme.of(context).iconTheme.color),
                      ),
                      onPressed: () {
                        final page = controller.currentPage + 1;
                        controller.animateToPage(
                            page: page > 3 ? 0 : page, duration: 400);
                      },
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 80,
              ),
      );
}
