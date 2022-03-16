import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/models/user.dart';

class StoryCircle extends StatelessWidget {

  final User user;

  const StoryCircle({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(user.image)))),
          SizedBox(
            height: 10,
          ),
          Text(
            user.name,
            overflow: TextOverflow.ellipsis,
          )
        ]));
  }
}
