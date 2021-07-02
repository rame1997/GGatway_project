import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/text.dart';

class LaunchScreen extends StatefulWidget {
  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/on_boarding');
    });

  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            'images/ggatway.jpg',
            height: double.infinity,
            fit: BoxFit.scaleDown,
          ),
          Positioned(
            right: SizeConfig.scaleWidth(0),
              left: SizeConfig.scaleWidth(0),
              bottom: SizeConfig.scaleHeight(10),
              child: TextCustom('ICT Outsourcing Social Enterprise', 'rob', FontWeight.w400, SizeConfig.scaleTextFont(16),
                  AppColors.TITLE, TextAlign.center))
        ],
      ),
    );
  }
}
