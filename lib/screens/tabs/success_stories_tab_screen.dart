import 'package:flutter/material.dart';
import 'package:ggatwayapp/models/success_stories_data.dart';
import 'package:ggatwayapp/screens/detiles_success_stories.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/card_success_stories.dart';

class SuccessStoriesTabScreen extends StatefulWidget {
  @override
  _SuccessStoriesTabScreenState createState() =>
      _SuccessStoriesTabScreenState();
}

class _SuccessStoriesTabScreenState extends State<SuccessStoriesTabScreen> {
  List<CardSuccessStories> success = dataSuccessStories;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: GridView.builder(
          itemCount: success.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: (SizeConfig.scaleWidth(175)/SizeConfig.scaleHeight(167)),
          ),
          itemBuilder: (context, index) {
            return CardSuccessStories(
              success[index].mainImage,
              success[index].name,
              success[index].date,
              success[index].fullDetiles,
            );
          }),
    );
  }
}
