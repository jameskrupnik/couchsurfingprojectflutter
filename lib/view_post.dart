import 'package:flutter/material.dart';
import 'package:couch_surfing_project/card_content.dart';

class ViewPost extends StatelessWidget {
  ViewPost(
    {
      super.key,
      this.showTitle = true, 
      this.showDescription = true, 
      this.showAuthor = true, 
      this.showImage = true, 
      this.clickable = true,
      this.firstName = '',
      this.lastName = '',
      this.iconUrl = '',
      this.titleName = '',
      this.description = '',
      this.feature = '',      
    }
  );

  final bool showTitle;
  final bool showDescription;
  final bool showAuthor;
  final bool showImage;
  final bool clickable;

  final String firstName;
  final String lastName;
  final String iconUrl;
  final String titleName;
  final String feature;
  final String description;  

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Post'),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: _scrollController,
        child: Column(
          children: [
            CardContent(
              clickable: false, 
              titleName: titleName,
              description: description,
              iconUrl: iconUrl,
              firstName: firstName,
              lastName: lastName,
              feature: feature,
            ),
          ],
        ),
      ),
    );
  }
}