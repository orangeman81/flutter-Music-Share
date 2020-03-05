import 'package:super_music/data/models/api/details.dart';
import 'package:super_music/data/models/state/appState.dart';
import 'package:redux/redux.dart';
import 'package:super_music/data/redux/actions.dart';

class DetailsView {
  final Details details;
  final Function(int id) onChangePage;

  DetailsView({this.details, this.onChangePage});

  factory DetailsView.fromStore(Store<AppState> store) {

    _onChangePage(int id) {
      return store.dispatch(RequestDetailsAction(id));
    }

    return DetailsView(
      details: store.state.details,
      onChangePage: _onChangePage
    );
  }
}
