import "package:flutter/material.dart";
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:super_music/data/models/state/appState.dart';
import 'package:super_music/data/models/state/viewmodels/homeView.dart';
import 'package:super_music/widgets/homeLayout.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(this.title),
      ),
      backgroundColor: Theme.of(context).accentColor,
      body: StoreConnector(
        distinct: true,
        converter: (Store<AppState> store) => HomeView.fromStore(store),
        builder: (BuildContext context, HomeView homeView) =>
            HomeLayout(homeView, true),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.album),
            title: Text('Albums'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.radio),
            title: Text('Radio'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
          ),
        ],
        selectedItemColor: Theme.of(context).accentColor,
        onTap: (int index) => Navigator.pushNamed(context, 'radios'),
      ),
    );
  }
}
