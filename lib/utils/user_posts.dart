import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/user.dart';

class UserPosts extends StatelessWidget {
  final User user;

  const UserPosts({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /*profile photo*/
              Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill, image: NetworkImage(user.image)))),
              const SizedBox(
                width: 10,
              ),

              /*Name*/
              Expanded(
                child: Text(
                  user.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Icon(Icons.menu)
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
              const Icon(Icons.bookmark)
            ],
          ),
        ),

        /*Liked by..*/
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              RichText(
                text: const TextSpan(
                    text: 'Liked by',
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' mitchkoko',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: " and"),
                      TextSpan(
                          text: " others",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]),
              ),
            ],
          ),
        ),

        /*caption*/
        Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8.0),
            child: RichText(
              text: const TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: 'kothathe ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ' i turn the dirt you are thorwing at me and you know what')
                  ]),
            ))
      ],
    );
  }
}
