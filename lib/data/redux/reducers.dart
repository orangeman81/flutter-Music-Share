import 'package:super_music/data/models/api/searchResult.dart';
import 'package:super_music/data/models/state/appState.dart';
import 'package:super_music/data/redux/actions.dart';

AppState stateReducer(AppState state, action) {
  return AppState(
    searchResults: searchResultsReducer(state.searchResults, action),
    query: queryReducer(state.query, action),
  );
}

String queryReducer(String state, action) {
  if (action is SearchAction) {
    return action.query ?? action.query;
  }

  return state;
}

List<SearchResult> searchResultsReducer(List<SearchResult> state, action) {
  if (action is LoadResultsAction) {
    return action.results;
  }

  return state;
}
