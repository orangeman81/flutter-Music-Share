import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show Client;
import 'package:super_music/data/models/api/searchResult.dart';

class AlbumProvider {
  String baseUrl = "https://deezerdevs-deezer.p.rapidapi.com/";
  Client client = Client();

  fetchSearchResults(String query) async {
    final response = await client.get(
      baseUrl + "search?q=$query",
      headers: {
        "x-rapidapi-host": "deezerdevs-deezer.p.rapidapi.com",
        "x-rapidapi-key": "6d76812301mshae66073ae2beca5p1e12adjsnc9f2b3725389"
      },
    );

    final jsonData = json.decode(response.body);
    final data = jsonData['data'];
    debugPrint(data.toString());
    final List<SearchResult> results =
        data.map((item) => SearchResult.fromJson(item)).toList();
    return results;
  }
}
