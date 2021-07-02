import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ggatwayapp/models/home_card_data.dart';
import 'package:ggatwayapp/models/our_team_data.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/card_home.dart';
import 'package:ggatwayapp/widgets/card_our_team.dart';
import 'package:ggatwayapp/widgets/text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OurTeam extends StatefulWidget {
  @override
  _OurTeamState createState() => _OurTeamState();
}

class _OurTeamState extends State<OurTeam> {
  List<CardHome> cardHome = dataCardHome;
  late PageController _pageController;
  int _currentPage = 0;
  List<CardOurTeam> data_card_our_team = dataCardOurTeam;

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
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon:
                      Icon(Icons.arrow_back_ios, color: AppColors.APPBAR_TITLE),
                ),
                title: TextCustom(
                  'Our Team',
                  'rob',
                  FontWeight.w700,
                  SizeConfig.scaleTextFont(22),
                  AppColors.APPBAR_TITLE,
                  null,
                ),

              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: SizeConfig.scaleWidth(40),
                      height: SizeConfig.scaleHeight(40),
                      child: Icon(
                        FontAwesomeIcons.users,
                        color: AppColors.APPBAR_TITLE,
                        size: SizeConfig.scaleHeight(30),
                      ),
                    ),
                  ),
                  Center(
                    child: TextCustom(
                      'Our Team',
                      'rob',
                      FontWeight.w600,
                      SizeConfig.scaleTextFont(22),
                      AppColors.INDICATOR_SELECTED_COLOR,
                      TextAlign.center,
                    ),
                  ),
                  SizedBox(height: SizeConfig.scaleHeight(5)),

                  Center(
                    child: TextCustom(
                      'Enterprise Core Team',
                      'rob',
                      FontWeight.w300,
                      SizeConfig.scaleTextFont(17),
                      AppColors.INDICATOR_SELECTED_COLOR,
                      TextAlign.center,
                    ),
                  ),
                  SizedBox(height: SizeConfig.scaleHeight(10)),
                  Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    height: SizeConfig.scaleHeight(350),
                    child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data_card_our_team.length,
                      itemBuilder: (context, index) {
                        var point = data_card_our_team[index];
                        return CardOurTeam(point.image, point.title, point.subTitle);
                      },
                      controller: _pageController,
                      onPageChanged: (int selectedPage) {
                        setState(() {
                          _currentPage = selectedPage;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: SizeConfig.scaleHeight(10)),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmoothPageIndicator(
                        controller: _pageController,
                        count:  data_card_our_team.length,
                        axisDirection: Axis.horizontal,
                        effect:  ExpandingDotsEffect	(
                            spacing:  6.0,
                            radius:  4.0,
                            dotWidth:  10.0,
                            dotHeight:  8.0,
                            strokeWidth:  1.5,
                            expansionFactor: 3,
                            dotColor:  AppColors.INDICATOR_DEFAULT_COLOR,
                            activeDotColor:  AppColors.INDICATOR_SELECTED_COLOR
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }

}
