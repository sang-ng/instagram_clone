import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/models/user.dart';

class StoryCircle extends StatelessWidget {
  final User user;

  const StoryCircle({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
              width: 70.0,
              height: 70.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(user.image)))),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            child: SizedBox(
              width: 80,
              child: Center(
                child: Text(
                  user.name,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ]));
  }
}
