import 'package:super_music/data/models/api/details.dart';

class SearchAction {
  final String query;
  SearchAction(this.query);
}

class LoadResultsAction {
  final List<dynamic> results;
  LoadResultsAction(this.results);
}

class RequestDetailsAction {
  final int id;
  RequestDetailsAction(this.id);
}

class LoadDetailsAction {
  final Details details;
  LoadDetailsAction(this.details);
}

class RequestRadioListAction {}

class LoadRadioListAction {
  final List<dynamic> results;
  LoadRadioListAction(this.results);
}

class RequestRadioDetailsAction {
  final int id;
  RequestRadioDetailsAction(this.id);
}

class LoadRadioDetailsAction {
  final List<dynamic> tracks;
  LoadRadioDetailsAction(this.tracks);
}
