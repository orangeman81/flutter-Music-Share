import "package:flutter/material.dart";
import 'package:super_music/utility/utility.dart';
import 'package:super_music/widgets/pageLayout.dart';
import 'package:super_music/widgets/showList.dart';


class RadioPage extends StatelessWidget {
  final String title;

  RadioPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(this.title),
      ),
      backgroundColor: Theme.of(context).accentColor,
      body: PageLayout(placeholderList, false),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.album),
            title: Text('Albums'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            title: Text('Artists'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.radio),
            title: Text('Radios'),
          ),
        ],
        selectedItemColor: Theme.of(context).accentColor,
        onTap: null,
      ),
    );
  }
}
