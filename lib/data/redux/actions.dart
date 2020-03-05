import 'package:super_music/data/models/api/details.dart';

enum Actions { Search, Load, Details, RadioList, Radio }

class SearchAction {
  final String query;
  SearchAction(this.query);
}

class RequestDetailsAction {
  final int id;
  RequestDetailsAction(this.id);
}

class LoadResultsAction {
  final List<dynamic> results;
  LoadResultsAction(this.results);
}

class LoadDetailsAction {
  final Details details;
  LoadDetailsAction(this.details);
}
