import 'package:flutter/material.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class CardOurTeam extends StatelessWidget {
  String image;
  String title;
  String subTitle;


  CardOurTeam(this.image, this.title, this.subTitle);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            child:
            Image.asset(image,fit: BoxFit.cover,width: double.infinity,),
            width: double.infinity,
            height: SizeConfig.scaleHeight(250),
          ),

          SizedBox(height: SizeConfig.scaleHeight(12),),

          Center(
            child: TextCustom(
              title,
              'rob',
              FontWeight.w700,
              SizeConfig.scaleTextFont(24),
              AppColors.INDICATOR_SELECTED_COLOR,
              TextAlign.center,
            ),
          ),
          SizedBox(height: SizeConfig.scaleHeight(6),),
          Center(
            child: TextCustom(
              subTitle,
              'rob',
              FontWeight.w200,
              SizeConfig.scaleTextFont(18),
              AppColors.APPBAR_TITLE,
              TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}