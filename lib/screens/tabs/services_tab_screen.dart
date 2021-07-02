import 'package:flutter/material.dart';
import 'package:ggatwayapp/models/servies_data.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/card_principles.dart';
import 'package:ggatwayapp/widgets/gridviewervices.dart';
import 'package:ggatwayapp/widgets/text.dart';

class ServicesTabScreen extends StatelessWidget {
  List<CardPrinciples> cardoutsurcingservies=cardOutsurcingServies;
  List<CardPrinciples> cardsoftwaredevelopmentservies=cardSoftwareDevelopmentServies;
  List<CardPrinciples> cardTalentdevelopmentsolution=cardTalentDevelopmentSolution;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(right: SizeConfig.scaleWidth(6),left: SizeConfig.scaleWidth(8),top: SizeConfig.scaleHeight(6)),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.scaleHeight(12),),
            Center(
          child: TextCustom(
            'IT OUTSOURCING SERVICES',
            'rob',
            FontWeight.w500,
            SizeConfig.scaleTextFont(20),
            AppColors.INDICATOR_SELECTED_COLOR,
            TextAlign.center,
          ),
        ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: SizeConfig.scaleHeight(8)),
            child: GridViewServices(cardoutsurcingservies),
          ),
            SizedBox(height: SizeConfig.scaleHeight(12),),

            Center(
              child: TextCustom(
                'SOFTWARE DEVELOPMENT SERVICES',
                'rob',
                FontWeight.w500,
                SizeConfig.scaleTextFont(20),
                AppColors.INDICATOR_SELECTED_COLOR,
                TextAlign.center,
              ),
            ),

            GridViewServices(cardsoftwaredevelopmentservies),
            SizedBox(height: SizeConfig.scaleHeight(12),),

            Center(
              child: TextCustom(
                'TALENT DEVELOPMENT SOLUTIONS',
                'rob',
                FontWeight.w500,
                SizeConfig.scaleTextFont(20),
                AppColors.INDICATOR_SELECTED_COLOR,
                TextAlign.center,
              ),
            ),

            GridViewServices(cardTalentdevelopmentsolution),

          ],

        ),
      ),
    );
  }
}


