import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List _users = [
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

  List _foundedUsers = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      _foundedUsers = _users;
    });
  }

  onSearch(String search) {
    setState(() {
      _foundedUsers = _users
          .where((user) => user.name.toLowerCase().contains(search))
          .toList();
    });
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: SizedBox(
        height: 38,
        child: TextField(
          onChanged: (value) => onSearch(value),
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[250],
              contentPadding: EdgeInsets.all(0),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.shade500,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none),
              hintStyle: TextStyle(fontSize: 14, color: Colors.grey.shade500),
              hintText: "Search"),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar());
  }
}
