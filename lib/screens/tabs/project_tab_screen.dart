import 'package:flutter/material.dart';
import 'package:ggatwayapp/models/project_data.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/card_project.dart';

class ProjectTabScreen extends StatefulWidget {
  const ProjectTabScreen({Key? key}) : super(key: key);

  @override
  _ProjectTabScreenState createState() => _ProjectTabScreenState();
}

class _ProjectTabScreenState extends State<ProjectTabScreen> {
  List<CardProject> project = dataProject;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: GridView.builder(
          itemCount: project.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: (SizeConfig.scaleWidth(175)/SizeConfig.scaleHeight(167)),
          ),

          itemBuilder: (context, index) {
            return CardProject(
              project[index].mainImage,
              project[index].title,
              project[index].detiles,
              project[index].comment,
              project[index].circleImage,
              project[index].person,
              project[index].onPressFacebook,
              project[index].onPressLinkedIn,
              project[index].onPressTwitter,
            );
          }),
    );
  }
}
