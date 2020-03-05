import 'package:super_music/data/models/api/searchResult.dart';
import 'package:super_music/data/models/state/appState.dart';
import 'package:redux/redux.dart';
import 'package:super_music/data/redux/actions.dart';

class HomeView {
  final List<SearchResult> searchResults;
  final Function(String query) onSearch;
  final Function(List<SearchResult> results) onLoad;

  HomeView({this.searchResults, this.onSearch, this.onLoad});

  factory HomeView.fromStore(Store<AppState> store) {
    _onSearch(String query) {
      return store.dispatch(SearchAction(query));
    }

    _onLoad(List<SearchResult> results) {
      return store.dispatch(LoadResultsAction(results));
    }

    return HomeView(
      searchResults: store.state.searchResults,
      onSearch: _onSearch,
      onLoad: _onLoad,
    );
  }
}
