import 'package:flutter/material.dart';
import 'package:ggatwayapp/screens/detiles_success_stories.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/text.dart';
class CardSuccessStories extends StatelessWidget {
  String mainImage;
  String name;
  String date;
  String fullDetiles;



  CardSuccessStories(
      this.name,
      this.mainImage,
      this.date,
      this.fullDetiles,
     );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => DetilesSuccessStories(mainImage,name,date,fullDetiles)
            )
        );

      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        color: Colors.white,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Container(
              child:
              Image.asset(mainImage,fit: BoxFit.cover,width: double.infinity,),
              width: double.infinity,
              height: SizeConfig.scaleHeight(220),
            ),

            SizedBox(height: SizeConfig.scaleHeight(10),),
            Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: SizeConfig.scaleWidth(8)),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: TextCustom(
                      name,
                      'rob',
                      FontWeight.w600,
                      SizeConfig.scaleTextFont(18),
                      AppColors.APPBAR_TITLE,
                     TextAlign.start,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(8),vertical: SizeConfig.scaleHeight(8),),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_today,color: AppColors.INDICATOR_SELECTED_COLOR,),
                      SizedBox(width: SizeConfig.scaleWidth(4),),
                      TextCustom(
                        date,
                        'rob',
                        FontWeight.w300,
                        SizeConfig.scaleTextFont(14),
                        AppColors.APPBAR_TITLE,
                        TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  indent: SizeConfig.scaleWidth(8),
                  endIndent: SizeConfig.scaleWidth(8),
                ),
                Container(
                  padding:  EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(8),vertical: SizeConfig.scaleHeight(2),),
                  child:
                    Text(
                      fullDetiles,
                      overflow:TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontFamily: 'rob', fontWeight: FontWeight.w500,fontSize: SizeConfig.scaleTextFont(15),color: AppColors.APPBAR_TITLE),
                    )
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}