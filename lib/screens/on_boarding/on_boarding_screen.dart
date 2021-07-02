import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/on_boarding_demo_data.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/on_boarding_content.dart';
import 'package:ggatwayapp/widgets/out_boarding_indicator.dart';
import 'package:ggatwayapp/widgets/text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
// TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int selectedPage) {
              setState(() {
                _currentPage = selectedPage;
              });
            },
            children: [
              OnBoardingContent(
                image: 'ggatway',
                title: 'Welcome',
                message:
                OUT_BOARDING_MESSAGE_SECREEN1,
              ),
              OnBoardingContent(
                image: 'ggatway',
                title: 'Vision',
                message:
                OUT_BOARDING_MESSAGE_SECREEN2,
              ),
            ],
          ),
          Positioned(
            bottom: SizeConfig.scaleHeight(130),
            left: 0,
            right: 0,
            child:
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                      controller: _pageController,
                      count:  2,
                      axisDirection: Axis.horizontal,
                      effect:  ExpandingDotsEffect	(
                          spacing:  4.0,
                          radius:  4.0,
                          dotWidth:  10.0,
                          dotHeight:  8.0,
                          strokeWidth:  1.5,
                          expansionFactor: 3,
                          dotColor:  AppColors.INDICATOR_DEFAULT_COLOR,
                          activeDotColor:  AppColors.INDICATOR_SELECTED_COLOR
                      ),
                    ),
                SizedBox(
                  height: SizeConfig.scaleHeight(15),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: SizeConfig.scaleHeight(32),
            child: Visibility(
              visible: _currentPage == 1,
              child: Padding(
                padding:  EdgeInsets.only(right: SizeConfig.scaleWidth(24),left: SizeConfig.scaleWidth(24)),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home_screen');
                    },
                    child: TextCustom(
                        'Go to App',
                        'rob',
                        FontWeight.w700,
                        SizeConfig.scaleTextFont(16),
                        AppColors.TItle_BUTTON,
                        TextAlign.center),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        primary: AppColors.BUTTON,
                        minimumSize: Size(double.infinity, 60))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
