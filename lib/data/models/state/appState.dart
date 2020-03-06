import 'package:flutter/material.dart';
import 'package:super_music/data/models/api/artist.dart';
import 'package:super_music/data/models/api/details.dart';
import 'package:super_music/data/models/api/radioResult.dart';
import 'package:super_music/data/models/api/searchResult.dart';

class AppState {
  final List<SearchResult> searchResults;
  final Details details;
  List<RadioResult> radioList;
  List<SearchResult> radio;

  AppState({
    @required this.searchResults,
    @required this.details,
    @required this.radioList,
    this.radio,
  });

  AppState.initialState()
      : searchResults = List.unmodifiable([]),
        details = new Details(
          title: "loading",
          tracks: [],
          coverBig: "https://via.placeholder.com/88",
          artist: new Artist(name: "loading"),
        ),
        radioList = List.unmodifiable([]),
        radio = List.unmodifiable([]);
}
