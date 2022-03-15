import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  final String text;

  const StoryCircle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
              Text(
            text,
            overflow: TextOverflow.ellipsis,
          )
        ]));
  }
}
