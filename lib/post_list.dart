import 'package:flutter/material.dart';
import 'package:couch_surfing_project/card_content.dart';
import 'package:couch_surfing_project/global/posts.dart';

class PostList extends StatelessWidget {
  PostList({super.key});

  var posts = Posts.create().posts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: ListView.separated(
        itemCount: posts.length,
        separatorBuilder: (context, index) => const Divider( color: Colors.white,),
        itemBuilder: (context, index) {
          var PostContent = posts[index];
          return CardContent(
            showTitle: false, 
            showDescription: false, 
            titleName: PostContent.title,
            description: PostContent.description,
            iconUrl: PostContent.friend.iconUrl,
            firstName: PostContent.friend.firstName,
            lastName: PostContent.friend.lastName,
            feature: PostContent.imageUrl,
          );
        }
      ),
      // body: ListView(
      //   children: const <Widget>[
      //     CardContent(showTitle: false, showDescription: false,),
      //     CardContent(showTitle: false, showDescription: false,),
      //     CardContent(showTitle: false, showDescription: false,),
      //   ],
      // ),
    );
  }
}