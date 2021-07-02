import 'package:flutter/material.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';


class OutBoardingIndicator extends StatelessWidget {
  final double marginEnd;
  final bool selected;
  final double selectedwidth;
  final double unSelectedwidth;
  final double selectedheight;
  final double unSelectedheight;
  final double selectedCircular;
  final double unSelectedCircular;

  OutBoardingIndicator( this.selectedwidth, this.selectedheight,this.unSelectedwidth, this.unSelectedheight,
      this.selectedCircular, this.unSelectedCircular ,{
  this.marginEnd = 0,
  this.selected = false,
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      width:selected ? SizeConfig.scaleWidth(selectedwidth):SizeConfig.scaleWidth(unSelectedwidth),
      height: selected ?SizeConfig.scaleHeight(selectedheight):SizeConfig.scaleHeight(unSelectedheight),
      decoration: BoxDecoration(
        color: selected ? AppColors.INDICATOR_SELECTED_COLOR : AppColors.INDICATOR_DEFAULT_COLOR,
        borderRadius:selected ? BorderRadius.circular(selectedCircular): BorderRadius.circular(unSelectedCircular),
      ),
    );
  }
}
