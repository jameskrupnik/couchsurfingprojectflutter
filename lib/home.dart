import 'package:couch_surfing_project/post_list.dart';
import 'package:flutter/material.dart';
import 'package:couch_surfing_project/header.dart';
import 'package:couch_surfing_project/card_content.dart';
import 'package:couch_surfing_project/global/posts.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  var post = Posts.create().posts.first;
  
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(context) {
    return  Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 188, 188, 188), Color.fromARGB(255, 219, 219, 219)],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft
          )
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: _scrollController,
          child: Column(
            children: [
              const Header(),
              const Padding(
              padding: EdgeInsets.all(8.0),
                child: Text('Recent Posts', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              CardContent(
                showDescription: false, 
                titleName: post.title,
                description: post.description,
                iconUrl: post.friend.iconUrl,
                firstName: post.friend.firstName,
                lastName: post.friend.lastName,
                feature: post.imageUrl,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => PostList()),
                  );
                },
                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue)),
                child: const Text('View More Posts', style: TextStyle(color: Colors.white)),
              )
            ],
          ) 
        ),
    );
  }
}