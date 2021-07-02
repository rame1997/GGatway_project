import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/text.dart';

class DrawerItem extends StatelessWidget
{
 String title;
 Function() onprss;

 DrawerItem(this.title, this.onprss);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextCustom(
            title,
            'rob',
            FontWeight.w500,
            SizeConfig.scaleTextFont(16),
            AppColors.INDICATOR_SELECTED_COLOR,
            TextAlign.start,
          ),
          IconButton(
            onPressed: onprss,
            icon: Icon(FontAwesomeIcons.chevronRight,color: AppColors.INDICATOR_SELECTED_COLOR,),
          ),
        ],
      ),
    );
  }
}
