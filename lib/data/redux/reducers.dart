import 'package:super_music/data/models/api/details.dart';
import 'package:super_music/data/models/api/searchResult.dart';
import 'package:super_music/data/models/state/appState.dart';
import 'package:super_music/data/redux/actions.dart';

AppState stateReducer(AppState state, action) {
  return AppState(
    searchResults: searchResultsReducer(state.searchResults, action),
    details: detailsReducer(state.details, action),
  );
}

Details detailsReducer(Details state, action) {
  if (action is LoadDetailsAction) {
    return action.details ?? state;
  }

  return state;
}

List<SearchResult> searchResultsReducer(List<SearchResult> state, action) {
  if (action is LoadResultsAction) {
    return action.results ?? state;
  }

  return state;
}
