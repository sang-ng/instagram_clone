import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserPosts extends StatelessWidget {
  final String name;

  UserPosts({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /*profile photo*/
              Container(
                width: 40,
                height: 40,
                decoration:
                    BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
              ),
              const SizedBox(
                width: 10,
              ),

              /*Name*/
              Expanded(
                child: Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Icon(Icons.menu)
            ],
          ),
        ),

        /*Post */
        Container(
          height: 300,
          color: Colors.grey[300],
        ),

        /*Below the photo*/
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite_outline),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark)
            ],
          ),
        ),

        /*Comments*/
       
      ],
    );
  }
}
