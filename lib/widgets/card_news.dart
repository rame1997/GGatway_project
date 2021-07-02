import 'package:flutter/material.dart';
import 'package:ggatwayapp/screens/detiles_news.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardNews extends StatelessWidget {
  String mainImage;
  String title;
  String date;
  String detiles;
  int comment;
  String circleImage;
  String person;
  Function()? onPressFacebook;
  Function()? onPressLinkedIn;
  Function()? onPressTwitter;

  CardNews(
      this.mainImage,
      this.title,
      this.date,
      this.detiles,
      this.comment,
      this.circleImage,
      this.person,
      this.onPressFacebook,
      this.onPressLinkedIn,
      this.onPressTwitter);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    DetilesNews(mainImage, title, date, detiles)));
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Container(
              child: Image.asset(
                mainImage,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              width: double.infinity,
              height: SizeConfig.scaleHeight(220),
            ),
            SizedBox(
              height: SizeConfig.scaleHeight(10),
            ),
            Column(
              children: [
                TextCustom(
                  title,
                  'rob',
                  FontWeight.w600,
                  SizeConfig.scaleTextFont(18),
                  AppColors.APPBAR_TITLE,
                  TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.scaleHeight(12),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.scaleWidth(8),
                    vertical: SizeConfig.scaleHeight(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: AppColors.INDICATOR_SELECTED_COLOR,
                          ),
                          SizedBox(
                            width: SizeConfig.scaleWidth(4),
                          ),
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
                      Row(
                        children: [
                          TextCustom(
                            '$comment',
                            'rob',
                            FontWeight.w600,
                            SizeConfig.scaleTextFont(17),
                            AppColors.APPBAR_TITLE,
                            TextAlign.center,
                          ),
                          SizedBox(
                            width: SizeConfig.scaleWidth(4),
                          ),
                          Icon(
                            FontAwesomeIcons.comment,
                            color: AppColors.INDICATOR_SELECTED_COLOR,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  indent: SizeConfig.scaleWidth(8),
                  endIndent: SizeConfig.scaleWidth(8),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.scaleWidth(6),
                    vertical: SizeConfig.scaleHeight(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(

                            radius: SizeConfig.scaleHeight(22),
                            backgroundImage: AssetImage(
                              circleImage,
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.scaleWidth(10),
                          ),
                          TextCustom(
                            person,
                            'rob',
                            FontWeight.w600,
                            SizeConfig.scaleTextFont(15),
                            AppColors.APPBAR_TITLE,
                            TextAlign.center,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: onPressLinkedIn,
                            icon: Icon(FontAwesomeIcons.facebookSquare),
                            color: AppColors.INDICATOR_SELECTED_COLOR,
                          ),
                          IconButton(
                              onPressed: onPressTwitter,
                              icon: Icon(FontAwesomeIcons.twitterSquare),
                              color: AppColors.INDICATOR_SELECTED_COLOR),
                          Padding(
                            padding:
                                EdgeInsets.only(top: SizeConfig.scaleHeight(2)),
                            child: IconButton(
                              onPressed: onPressFacebook,
                              icon: FaIcon(FontAwesomeIcons.linkedin),
                              color: AppColors.INDICATOR_SELECTED_COLOR,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
