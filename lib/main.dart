import 'package:flutter/material.dart';
import 'package:ggatwayapp/provider/title_provider.dart';
import 'package:ggatwayapp/screens/about_us_screen.dart';
import 'package:ggatwayapp/screens/contant_us.dart';
import 'package:ggatwayapp/screens/home_screen.dart';
import 'package:ggatwayapp/screens/launch_screen.dart';
import 'package:ggatwayapp/screens/on_boarding/on_boarding_screen.dart';
import 'package:ggatwayapp/screens/our_team.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      builder: (BuildContext context,Widget? child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/launch': (context) => LaunchScreen(),
            '/on_boarding': (context) => OnBoardingScreen(),
            '/home_screen': (context) => HomeScreen(),
            '/about_screen': (context) => AboutUs(),
            '/out_team_screen': (context) => OurTeam(),
            '/contant_us_screen': (context) => ContantUs(),
          },
          theme:
          ThemeData(
              appBarTheme: AppBarTheme(centerTitle: true, elevation: 0),
              scrollbarTheme: ScrollbarThemeData(
                  isAlwaysShown: true,
                  thickness: MaterialStateProperty.all(5),
                  thumbColor: MaterialStateProperty.all(AppColors.INDICATOR_SELECTED_COLOR),
                  radius: Radius.circular(10),
                  minThumbLength: 100)
          ),

          initialRoute: '/launch',
        );
      },
      providers: [
        ChangeNotifierProvider<TitleProvider>(create: (_)=>TitleProvider(),),
      ],
    );
  }
}
