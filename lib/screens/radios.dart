import "package:flutter/material.dart";
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:super_music/data/models/state/appState.dart';
import 'package:super_music/data/models/state/viewmodels/radioView.dart';
import 'package:super_music/widgets/radioLayout.dart';

class RadioPage extends StatelessWidget {
  final String title;

  RadioPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(this.title),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: StoreConnector(
        distinct: true,
        converter: (Store<AppState> store) => RadioView.fromStore(store),
        builder: (BuildContext context, RadioView radioView) =>
            RadioLayout(radioView),
      ),
    );
  }
}
