import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';


class Stars extends StatelessWidget {
  final double marginEnd;


  Stars(this.marginEnd);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd),
     child: Icon(FontAwesomeIcons.solidStar,color: AppColors.star,size: SizeConfig.scaleHeight(22),),

    );
  }
}
