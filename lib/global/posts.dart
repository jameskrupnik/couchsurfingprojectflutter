import 'package:couch_surfing_project/global/post.dart';
import 'package:couch_surfing_project/global/friend.dart';

class Posts{
  List<Post> posts;

  Posts({required this.posts});

  static final Posts origin = Posts(posts: [
    Post(
      title: 'Hello World', 
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue in justo sed gravida. Suspendisse congue elit quis libero tincidunt, eget lacinia neque pulvinar. Phasellus vitae elit in nibh lobortis euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis aliquam diam quis erat fermentum, sed porttitor turpis lacinia. Duis eu tortor a massa facilisis rutrum. Fusce iaculis arcu sit amet convallis rhoncus. Proin augue est, pretium mollis aliquam laoreet, ultricies nec risus. Maecenas consectetur, enim vitae luctus rutrum, purus leo accumsan metus, at mollis orci orci nec ante. Cras dictum nec quam quis commodo. Vestibulum ultrices varius sem, in dignissim ligula ullamcorper id. Etiam sollicitudin suscipit purus, at blandit dui consectetur vel. Fusce congue nisl sodales, congue ipsum eu, mollis risus. Suspendisse nec accumsan urna, id tincidunt mi.', 
      imageUrl: 'https://fastly.picsum.photos/id/43/1280/831.jpg?hmac=glK-rQ0ppFClW-lvjk9FqEWKog07XkOxJf6Xg_cU9LI',
      friend: Friend(
        firstName: 'Bob', 
        lastName: 'Smith', 
        iconUrl: 'https://fastly.picsum.photos/id/58/1280/853.jpg?hmac=YO3QnOm9TpyM5DqsJjoM4CHg8oIq4cMWLpd9ALoP908'
      )
    ),
    Post(
      title: 'Hello World Again', 
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue in justo sed gravida. Suspendisse congue elit quis libero tincidunt, eget lacinia neque pulvinar. Phasellus vitae elit in nibh lobortis euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis aliquam diam quis erat fermentum, sed porttitor turpis lacinia. Duis eu tortor a massa facilisis rutrum. Fusce iaculis arcu sit amet convallis rhoncus. Proin augue est, pretium mollis aliquam laoreet, ultricies nec risus. Maecenas consectetur, enim vitae luctus rutrum, purus leo accumsan metus, at mollis orci orci nec ante. Cras dictum nec quam quis commodo. Vestibulum ultrices varius sem, in dignissim ligula ullamcorper id. Etiam sollicitudin suscipit purus, at blandit dui consectetur vel. Fusce congue nisl sodales, congue ipsum eu, mollis risus. Suspendisse nec accumsan urna, id tincidunt mi.', 
      imageUrl: 'https://fastly.picsum.photos/id/42/3456/2304.jpg?hmac=dhQvd1Qp19zg26MEwYMnfz34eLnGv8meGk_lFNAJR3g',
      friend: Friend(
        firstName: 'John', 
        lastName: 'Smith', 
        iconUrl: 'https://fastly.picsum.photos/id/48/2000/1000.jpg?hmac=uqbY-4VkzxZbc3QaXNyxIR6tMHMyMQuxUhezQBaWQZA'
      )      
    ),
    Post(
      title: 'Hello World Again Again', 
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue in justo sed gravida. Suspendisse congue elit quis libero tincidunt, eget lacinia neque pulvinar. Phasellus vitae elit in nibh lobortis euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis aliquam diam quis erat fermentum, sed porttitor turpis lacinia. Duis eu tortor a massa facilisis rutrum. Fusce iaculis arcu sit amet convallis rhoncus. Proin augue est, pretium mollis aliquam laoreet, ultricies nec risus. Maecenas consectetur, enim vitae luctus rutrum, purus leo accumsan metus, at mollis orci orci nec ante. Cras dictum nec quam quis commodo. Vestibulum ultrices varius sem, in dignissim ligula ullamcorper id. Etiam sollicitudin suscipit purus, at blandit dui consectetur vel. Fusce congue nisl sodales, congue ipsum eu, mollis risus. Suspendisse nec accumsan urna, id tincidunt mi.', 
      imageUrl: 'https://fastly.picsum.photos/id/43/1280/831.jpg?hmac=glK-rQ0ppFClW-lvjk9FqEWKog07XkOxJf6Xg_cU9LI',
      friend: Friend(
        firstName: 'George', 
        lastName: 'Smith', 
        iconUrl: 'https://fastly.picsum.photos/id/237/400/600.jpg?hmac=ZwrHmBQN0f4voRjmJj66G9ylrA8aP28DQl9Z3YlskZQ'
      )
    ), 
  ]);

  factory Posts.create() {
    return origin;
  }
}