import 'package:super_music/data/models/api/searchResult.dart';
import 'package:super_music/data/models/state/appState.dart';
import 'package:redux/redux.dart';

class RadioDetailsView {
  final List<SearchResult> tracks;

  RadioDetailsView({this.tracks});

  factory RadioDetailsView.fromStore(Store<AppState> store) {
    return RadioDetailsView(
      tracks: store.state.radio,
    );
  }
}
