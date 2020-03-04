import 'package:super_music/data/models/api/searchResult.dart';

enum Actions { Search, Load, Details, RadioList, Radio }

class SearchAction {
  final String query;
  SearchAction(this.query);
}

class LoadResultsAction {
  final List<SearchResult> results;
  LoadResultsAction(this.results);
}

class DetailsAction {
  final SearchResult details;
  DetailsAction(this.details);
}
