import 'package:super_music/data/models/state/appState.dart';
import 'package:redux/redux.dart';
import 'package:super_music/data/redux/actions.dart';
import 'package:super_music/data/repositories/albumProvider.dart';

void appStateMiddleware(
    Store<AppState> store, action, NextDispatcher next) async {
  next(action);
  final AlbumProvider provider = AlbumProvider();

  if (action is SearchAction) {
    final String query = action.query;
    final results = await provider.fetchSearchResults(query);
    store.dispatch(LoadResultsAction(results));
  }

  if (action is RequestDetailsAction) {
    final int id = action.id;
    final results = await provider.fetchDetails(id);
    store.dispatch(LoadDetailsAction(results));
  }
}
