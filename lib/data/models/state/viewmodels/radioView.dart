import 'package:super_music/data/models/api/radioResult.dart';
import 'package:super_music/data/models/state/appState.dart';
import 'package:redux/redux.dart';

class RadioView {
  final List<RadioResult> radioList;

  RadioView({this.radioList});

  factory RadioView.fromStore(Store<AppState> store) {
    return RadioView(
      radioList: store.state.radioList,
    );
  }
}
