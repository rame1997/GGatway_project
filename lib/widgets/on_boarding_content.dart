import 'package:flutter/material.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/text.dart';

class OnBoardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String message;

  OnBoardingContent({
    required this.image,
    required this.title,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeConfig.scaleHeight(300)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('images/$image.jpg'),
          SizedBox(
            height: SizeConfig.scaleHeight(48),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(34)),
            child: TextCustom(
                title,
                'rob',
                FontWeight.w700,
                SizeConfig.scaleTextFont(24),
                AppColors.ON_BOARDING_TITLE_COLOR,
                TextAlign.center),
          ),
          SizedBox(
            height: SizeConfig.scaleHeight(16),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(34)),
            child: TextCustom(
                message,
                'rob',
                FontWeight.w400,
                SizeConfig.scaleTextFont(14),
                AppColors.ON_BOARDING_MESSAGE_COLOR,
                TextAlign.center),
          ),
        ],
      ),
    );
  }
}
