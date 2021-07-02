
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/text.dart';

class CardPrinciples extends StatelessWidget {
  String title;
IconData icon;


  CardPrinciples(
      this.title,
      this.icon
     );
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      color: Colors.white,
      shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding:  EdgeInsets.only(left: SizeConfig.scaleWidth(8),right: SizeConfig.scaleWidth(8),),
        child: Row(
          children: [
            Icon(icon,color:AppColors.INDICATOR_SELECTED_COLOR),
            SizedBox(width: SizeConfig.scaleWidth(8),),

            Flexible(
              child: TextCustom(
                title,
                'rob',
                FontWeight.w700,
                SizeConfig.scaleTextFont(14),
                AppColors.APPBAR_TITLE,
                TextAlign.center,
              ),
            ),

          ],
        ),
      ),
    );
  }
}