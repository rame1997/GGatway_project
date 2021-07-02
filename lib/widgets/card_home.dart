import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/text.dart';
class CardHome extends StatelessWidget {
 String count;
 String? sybm;
 String desc;
 IconData icon;


 CardHome( this.count, this.sybm,this.desc,this.icon);

  @override
  Widget build(BuildContext context) {
      return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        color: AppColors.INDICATOR_SELECTED_COLOR,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(bottomRight:Radius.circular(10))
                   ),
                  width: SizeConfig.scaleWidth(45),
                  height: SizeConfig.scaleHeight(45),
                  child: Icon(icon,size: SizeConfig.scaleHeight(30),color: AppColors.APPBAR_TITLE,),
                ),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(10)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextCustom(
                        '$count',
                        'rob',
                        FontWeight.w600,
                        SizeConfig.scaleTextFont(26),
                        Colors.white,
                        TextAlign.center,
                      ),
                      SizedBox(width: SizeConfig.scaleWidth(3),),
                      TextCustom(
                        '$sybm',
                        'rob',
                        FontWeight.w600,
                        SizeConfig.scaleTextFont(20),
                        Colors.white,
                        TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.scaleHeight(10),),
            Expanded(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(6),vertical: SizeConfig.scaleHeight(6)),
                child: TextCustom(
                  desc,
                  'rob',
                  FontWeight.w400,
                  SizeConfig.scaleTextFont(16),
                  Colors.white,
                  TextAlign.start,
                ),
              ),
            ),
          ],
        ),
      );
  }
}