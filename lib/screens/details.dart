import "package:flutter/material.dart";
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:super_music/data/models/state/appState.dart';
import 'package:super_music/data/models/state/viewmodels/detailsView.dart';
import 'package:super_music/widgets/detailsLayout.dart';

class DetailsPage extends StatelessWidget {
  final String title;

  DetailsPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(this.title),
      ),
      backgroundColor: Theme.of(context).accentColor,
      body: StoreConnector(
        distinct: true,
        converter: (Store<AppState> store) => DetailsView.fromStore(store),
        builder: (BuildContext context, DetailsView detailsView) =>
            DetailsLayout(detailsView),
      ),
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
        onTap: (int index) => Navigator.pushNamed(context, '/'),
      ),
    );
  }
}
