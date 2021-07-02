import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ggatwayapp/provider/title_provider.dart';
import 'package:ggatwayapp/screens/about_us_screen.dart';
import 'package:ggatwayapp/screens/tabs/News_tab_screen.dart';
import 'package:ggatwayapp/screens/tabs/home_tab_screen.dart';
import 'package:ggatwayapp/screens/tabs/project_tab_screen.dart';
import 'package:ggatwayapp/screens/tabs/services_tab_screen.dart';
import 'package:ggatwayapp/screens/tabs/success_stories_tab_screen.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/drawer_item.dart';
import 'package:ggatwayapp/widgets/text.dart';
import 'package:provider/provider.dart';

import 'contant_us.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TitleProvider _data;

  late TabController _tabController;
  int _selectedTabIndex = 0;
  String titel = 'Home';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _data = Provider.of<TitleProvider>(context, listen: false);
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      if (_selectedTabIndex != _tabController.index) {
        _selectedTabIndex = _tabController.index;
        _data.changeTitle(_selectedTabIndex);
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
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
              backgroundColor: Colors.transparent,
              drawer: Container(
                width: SizeConfig.scaleWidth(230),
                child: Drawer(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      DrawerHeader(
                        decoration: BoxDecoration(
                          color: AppColors.BUTTON,
                          image: DecorationImage(
                            image: AssetImage('images/about.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(),
                      ),
                      DrawerItem('About GGatway', () {
                        Navigator.pushNamed(context, '/about_screen');
                      }),
                      SizedBox(
                        height: SizeConfig.scaleHeight(14),
                      ),
                      DrawerItem('Our Team', () {
                        Navigator.pushNamed(context, '/out_team_screen');
                      }),
                      SizedBox(
                        height: SizeConfig.scaleHeight(14),
                      ),
                      DrawerItem('Contant us', () {
                        Navigator.pushNamed(context, '/contant_us_screen');
                      }),
                    ],
                  ),
                ),
              ),
              appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: TextCustom(
                  Provider.of<TitleProvider>(context).title,
                  'rob',
                  FontWeight.w700,
                  SizeConfig.scaleTextFont(22),
                  AppColors.INDICATOR_SELECTED_COLOR,
                  null,
                ),
              ),
              body: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.scaleWidth(16),
                        right: SizeConfig.scaleWidth(16)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextCustom(
                              'GGatway',
                              'rob',
                              FontWeight.w700,
                              SizeConfig.scaleTextFont(28),
                              AppColors.APPBAR_TITLE,
                              null,
                            ),
                            TextCustom(
                              'IT Company',
                              'rob',
                              FontWeight.w400,
                              SizeConfig.scaleTextFont(14),
                              AppColors.APPBAR_SUB_TITLE,
                              null,
                            ),
                          ],
                        ),
                        Container(
                          height: SizeConfig.scaleHeight(55),
                          width: SizeConfig.scaleWidth(55),
                          child: Image.asset('images/ggatway.jpg'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.scaleHeight(5),
                  ),
                  TabBar(
                    indicatorColor: AppColors.INDICATOR_SELECTED_COLOR,
                    isScrollable: true,
                    controller: _tabController,
                    indicatorWeight: 2,
                    tabs: [
                      Tab(
                        child: TextCustom(
                          'Home',
                          'rob',
                          FontWeight.w400,
                          SizeConfig.scaleTextFont(16),
                          _selectedTabIndex == 0
                              ? AppColors.INDICATOR_SELECTED_COLOR
                              : AppColors.APPBAR_SUB_TITLE,
                          TextAlign.center,
                        ),
                      ),
                      Tab(
                        child: TextCustom(
                          'News',
                          'rob',
                          FontWeight.w400,
                          SizeConfig.scaleTextFont(16),
                          _selectedTabIndex == 1
                              ? AppColors.INDICATOR_SELECTED_COLOR
                              : AppColors.APPBAR_SUB_TITLE,
                          TextAlign.center,
                        ),
                      ),
                      Tab(
                        child: TextCustom(
                          'Services',
                          'rob',
                          FontWeight.w400,
                          SizeConfig.scaleTextFont(16),
                          _selectedTabIndex == 2
                              ? AppColors.INDICATOR_SELECTED_COLOR
                              : AppColors.APPBAR_SUB_TITLE,
                          TextAlign.center,
                        ),
                      ),
                      Tab(
                        child: TextCustom(
                          'Projects',
                          'rob',
                          FontWeight.w400,
                          SizeConfig.scaleTextFont(16),
                          _selectedTabIndex == 3
                              ? AppColors.INDICATOR_SELECTED_COLOR
                              : AppColors.APPBAR_SUB_TITLE,
                          TextAlign.center,
                        ),
                      ),
                      Tab(
                        child: TextCustom(
                          'Success Stories',
                          'rob',
                          FontWeight.w400,
                          SizeConfig.scaleTextFont(16),
                          _selectedTabIndex == 4
                              ? AppColors.INDICATOR_SELECTED_COLOR
                              : AppColors.APPBAR_SUB_TITLE,
                          TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        HomeTabScreen(),
                        NewsTabScreen(),
                        ServicesTabScreen(),
                        ProjectTabScreen(),
                        SuccessStoriesTabScreen(),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
