import 'package:flutter/material.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/text.dart';

class DetilesNews extends StatefulWidget {
  String mainImage;
  String title;
  String date;
  String detiles;


  DetilesNews(this.mainImage, this.title, this.date, this.detiles);

  @override
  _DetilesNewsState createState() => _DetilesNewsState();
}

class _DetilesNewsState extends State<DetilesNews> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios, color: AppColors.APPBAR_TITLE),
                ),
                title: TextCustom(
                  'Details',
                  'rob',
                  FontWeight.w700,
                  SizeConfig.scaleTextFont(22),
                  AppColors.APPBAR_TITLE,
                  null,
                ),

              ),
              body: Scrollbar(
                child: SingleChildScrollView(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(16),vertical: SizeConfig.scaleHeight(16)),
                    child: Column(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child:
                          Image.asset(widget.mainImage,fit: BoxFit.cover,width: double.infinity,),
                          width: double.infinity,
                          height: SizeConfig.scaleHeight(220),
                        ),

                        SizedBox(height: SizeConfig.scaleHeight(15),),
                        Column(
                          children: [
                            TextCustom(
                              widget.title,
                              'rob',
                              FontWeight.w600,
                              SizeConfig.scaleTextFont(18),
                              AppColors.APPBAR_TITLE,
                              TextAlign.start,
                            ),
                            SizedBox(height: SizeConfig.scaleHeight(12),),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(8),vertical: SizeConfig.scaleHeight(8),),
                              child: Row(
                                children: [
                                  Icon(Icons.calendar_today,color: AppColors.INDICATOR_SELECTED_COLOR,),
                                  SizedBox(width: SizeConfig.scaleWidth(4),),
                                  TextCustom(
                                    widget.date,
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
                          
                          ],
                        ),
                        TextCustom(
                          widget.detiles,
                          'rob',
                          FontWeight.w300,
                          SizeConfig.scaleTextFont(16),
                          AppColors.APPBAR_TITLE,
                          TextAlign.start,
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            )));
  }
}
