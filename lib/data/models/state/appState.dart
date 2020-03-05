import 'package:flutter/material.dart';
import 'package:super_music/data/models/api/searchResult.dart';

class AppState {
  final List<SearchResult> searchResults;
  String query;
  SearchResult details;
  List<Radio> radioList;
  Radio radio;

  AppState({
    this.query,
    @required this.searchResults,
    this.details,
    this.radioList,
    this.radio,
  });

  AppState.initialState() : searchResults = List.unmodifiable([]);
}
