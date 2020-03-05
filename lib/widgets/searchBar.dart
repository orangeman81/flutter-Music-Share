import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart' show DebounceExtensions;
import 'package:rxdart/subjects.dart';

class SearchBar extends StatefulWidget {

  Function _onSearch;

  SearchBar(this._onSearch);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  BehaviorSubject<String> $search = new BehaviorSubject<String>();

  @override
  void initState() {
    super.initState();

    $search.stream
        .where((query) => query.length > 2 && query != null)
        .debounceTime(Duration(milliseconds: 400))
        .distinct()
        .listen((String query) => widget._onSearch(query));
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Artist',
        hintText: "look for an Album",
      ),
      style: TextStyle(
        color: Colors.black87,
      ),
      onChanged: (event) => $search.add(event),
    );
  }

  @override
  void dispose() {
    super.dispose();
    $search.close();
  }
}
