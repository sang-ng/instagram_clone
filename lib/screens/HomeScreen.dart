import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/story_circle.dart';
import 'package:instagram_clone/utils/user_posts.dart';

class HomeScreen extends StatelessWidget {
  final List users = [
    'obama',
    'someguy',
    'Son goku',
    'Prince',
    'Shigo',
    'obama',
    'someguy',
    'Son goku',
    'Prince',
    'Shigo'
  ];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    const double padding = 15;
    const sidePadding = EdgeInsets.symmetric(horizontal: 25);

    AppBar _buildAppBar() {
      return AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_outlined),
            onPressed: () {},
            color: Colors.black,
          ),
          IconButton(
            icon: Icon(Icons.favorite_border_outlined),
            onPressed: () {},
            color: Colors.black,
          ),
          IconButton(
            icon: Icon(Icons.message_outlined),
            onPressed: () {},
            color: Colors.black,
          )
        ],
      );
    }

    Widget _storySection = SizedBox(
      height: 90,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 10);
        },
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return StoryCircle(text: users[index]);
        },
      ),
    );

    Widget _buildBody() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: padding,
          ),
          _storySection,
          const Divider(
            height: 2,
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => UserPosts(name: users[index]),
              itemCount: users.length,
            ),
          )
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }
}
