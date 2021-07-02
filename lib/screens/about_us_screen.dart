import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ggatwayapp/models/about_card_data.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/on_boarding_demo_data.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/card_home.dart';
import 'package:ggatwayapp/widgets/card_principles.dart';
import 'package:ggatwayapp/widgets/text.dart';
import 'package:ggatwayapp/models/principle_card_data.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  List<CardHome> cardAbout =  dataCardAbout;
  List<CardPrinciples> cardprinciples =  cardPrinciples;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Theme(
              data: ThemeData(highlightColor: AppColors.INDICATOR_SELECTED_COLOR,appBarTheme: AppBarTheme(centerTitle: true)),
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon:
                        Icon(Icons.arrow_back_ios, color: AppColors.APPBAR_TITLE),
                  ),
                  title: TextCustom(
                    'About GGatway',
                    'rob',
                    FontWeight.w700,
                    SizeConfig.scaleTextFont(22),
                    AppColors.APPBAR_TITLE,
                    null,
                  ),

                ),
                body:  Scrollbar(
                  child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(right: SizeConfig.scaleWidth(8),left: SizeConfig.scaleWidth(8),top: SizeConfig.scaleHeight(6)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(SizeConfig.scaleHeight(10))),
                              ),
                              width: double.infinity,
                              height: SizeConfig.scaleHeight(200),
                              child: Image.asset('images/about.jpg',
                                  width: double.infinity, fit: BoxFit.cover),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: SizeConfig.scaleHeight(12)),
                              child: TextCustom(
                                'About GGatway',
                                'rob',
                                FontWeight.w700,
                                SizeConfig.scaleTextFont(22),
                                AppColors.BUTTON,
                                TextAlign.start,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.scaleWidth(8),
                                  ),
                              child: TextCustom(
                                ABOUT_TEXT,
                                'rob',
                                FontWeight.w500,
                                SizeConfig.scaleTextFont(19),
                                AppColors.APPBAR_TITLE,
                                TextAlign.start,
                              ),
                            ),
                        SizedBox(height: SizeConfig.scaleHeight(10),),
                        GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: cardAbout.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 0,
                            crossAxisSpacing: 0,
                            childAspectRatio: (SizeConfig.scaleWidth(150)/SizeConfig.scaleHeight(230)),

                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return CardHome(cardAbout[index].count,cardAbout[index].sybm,cardAbout[index].desc,cardAbout[index].icon);
                          },
                        ),
                            Center(
                              child: Container(
                                width: SizeConfig.scaleWidth(50),
                                height: SizeConfig.scaleHeight(50),
child: Icon(FontAwesomeIcons.star,color:AppColors.INDICATOR_SELECTED_COLOR),

                              ),
                            ),
                            Center(
                              child: TextCustom(
                                'PRINCIPLES',
                                'rob',
                                FontWeight.w500,
                                SizeConfig.scaleTextFont(24),
                                AppColors.INDICATOR_SELECTED_COLOR,
                                TextAlign.center,
                              ),
                            ),
                            GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: cardprinciples.length,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 0,
                                crossAxisSpacing: 0,
                                childAspectRatio: (SizeConfig.scaleWidth(150)/SizeConfig.scaleHeight(70)),

                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return CardPrinciples(cardprinciples[index].title,cardprinciples[index].icon);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                ),

              ),
            )));
  }
}
