import 'package:couch_surfing_project/global/friend.dart';

class Post{
  String title;
  String description;
  String imageUrl;
  Friend friend;

  Post(
    {
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.friend
    }
  );
}