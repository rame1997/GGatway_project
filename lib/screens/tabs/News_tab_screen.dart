import 'package:flutter/material.dart';
import 'package:ggatwayapp/models/news_data.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/card_news.dart';

class NewsTabScreen extends StatefulWidget {
  const NewsTabScreen({Key? key}) : super(key: key);

  @override
  _NewsTabScreenState createState() => _NewsTabScreenState();
}

class _NewsTabScreenState extends State<NewsTabScreen> {
  List<CardNews> news = dataNews;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: GridView.builder(
          itemCount: news.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: (SizeConfig.scaleWidth(175)/SizeConfig.scaleHeight(190)),
          ),

          itemBuilder: (context, index) {
            return CardNews(
              news[index].mainImage,
              news[index].title,
              news[index].date,
              news[index].detiles,
              news[index].comment,
              news[index].circleImage,
              news[index].person,
              news[index].onPressFacebook,
              news[index].onPressLinkedIn,
              news[index].onPressTwitter,
            );
          }),
    );
  }
}
