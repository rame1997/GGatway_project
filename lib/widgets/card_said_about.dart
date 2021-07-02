import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/star.dart';
import 'package:ggatwayapp/widgets/text.dart';

class CardSaidAbout extends StatelessWidget {
  String image;
  String title;
  String subTitle;

  CardSaidAbout(this.image, this.title, this.subTitle);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      color: AppColors.INDICATOR_SELECTED_COLOR,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(12)),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                      borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(12))),
                  width: SizeConfig.scaleWidth(90),
                  height: SizeConfig.scaleHeight(80),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
SizedBox(width: SizeConfig.scaleWidth(30),),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stars(12),
                  Stars(12),
                  Stars(12),
                  Stars(12),
                  Stars(12),
                ],
              ),
            ],
          ),
          SizedBox(height: SizeConfig.scaleHeight(10),),
          Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(6),vertical: SizeConfig.scaleHeight(6)),
              child: TextCustom(
                title,
                'rob',
                FontWeight.w400,
                SizeConfig.scaleTextFont(17),
                Colors.white,
                TextAlign.start,
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: SizeConfig.scaleWidth(50),bottom: SizeConfig.scaleHeight(10)),
            child: TextCustom(
              subTitle,
              'rob',
              FontWeight.w700,
              SizeConfig.scaleTextFont(16),
              Colors.black,
              TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
