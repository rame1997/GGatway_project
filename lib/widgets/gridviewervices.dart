
import 'package:flutter/material.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/card_principles.dart';

class GridViewServices extends StatelessWidget {


  final List<CardPrinciples> list;


  GridViewServices(this.list);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        childAspectRatio: (SizeConfig.scaleWidth(150)/SizeConfig.scaleHeight(70)),

      ),
      itemBuilder: (BuildContext context, int index) {
        return CardPrinciples(list[index].title,list[index].icon);
      },
    );
  }
}