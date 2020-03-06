import "package:flutter/material.dart";
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:super_music/data/models/api/radioArguments.dart';
import 'package:super_music/data/models/state/appState.dart';
import 'package:super_music/data/models/state/viewmodels/radioDetailsView.dart';
import 'package:super_music/widgets/radioDetailsLayout.dart';

class RadioDetailsPage extends StatelessWidget {
  final String title;
  final RadioArguments arguments;

  RadioDetailsPage({this.title, this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(this.title),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: StoreConnector(
        distinct: true,
        converter: (Store<AppState> store) => RadioDetailsView.fromStore(store),
        builder: (BuildContext context, RadioDetailsView detailsView) =>
            RadioDetailsLayout(detailsView, arguments.title, arguments.cover),
      )
    );
  }
}
