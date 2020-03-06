import 'package:flutter/material.dart';
import 'package:super_music/data/models/api/artist.dart';
import 'package:super_music/data/models/api/details.dart';
import 'package:super_music/data/models/api/searchResult.dart';

class AppState {
  final List<SearchResult> searchResults;
  final Details details;
  List<Radio> radioList;
  Radio radio;

  AppState({
    @required this.searchResults,
    this.details,
    this.radioList,
    this.radio,
  });

  AppState.initialState()
      : searchResults = List.unmodifiable([]),
        details = new Details(
          title: "loading",
          tracks: [],
          artist: new Artist(name: "loading", pictureBig: ""),
        );
}
