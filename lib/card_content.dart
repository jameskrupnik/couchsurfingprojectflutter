import 'package:flutter/material.dart';
import 'package:couch_surfing_project/view_post.dart';

class CardContent extends StatelessWidget {
  CardContent(
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


  @override
  Widget build(context) {
        return SizedBox(
      child: Card(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                if (clickable) {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => ViewPost(
                      showTitle: showTitle,
                      showDescription: showDescription,
                      showAuthor: showAuthor,
                      showImage: showImage,
                      clickable: clickable,
                      firstName: firstName,
                      lastName: lastName,
                      iconUrl: iconUrl,
                      titleName: titleName,
                      description: description,
                      feature: feature,
                    )),
                  );    
                }            
              },
              child: Column(
                children: [
                  if (showAuthor) ListTile(
                    title: Text(
                      '$firstName $lastName',
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    leading: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(iconUrl),
                          radius: 50,
                        )
                      ),
                  ),
                  const Divider(),
                  if (showTitle) ListTile(
                    title: Text(
                      titleName,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Image.network(feature),
                  if (showDescription) ListTile(
                    title: Text(description),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}