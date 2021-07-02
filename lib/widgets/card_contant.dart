import 'package:flutter/material.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/text.dart';

class CardContant extends StatelessWidget {
  IconData icon;
  String title;
  String titleWidget;
  int index;

  CardContant(this.titleWidget, this.icon, this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: SizeConfig.scaleHeight(6),
            horizontal: SizeConfig.scaleWidth(8)),
        child: ExpansionTile(
          title: TextCustom(
            titleWidget,
            'rob',
            FontWeight.w700,
            SizeConfig.scaleTextFont(20),
            AppColors.INDICATOR_SELECTED_COLOR,
            TextAlign.start,
          ),
          children: [
            Container(
              width: double.infinity,
              height: SizeConfig.scaleHeight(65),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: SizeConfig.scaleWidth(8)),
                        child: TextCustom(
                          title,
                          'rob',
                          FontWeight.w700,
                          SizeConfig.scaleTextFont(20),
                          AppColors.APPBAR_TITLE,
                          TextAlign.start,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
