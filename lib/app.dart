import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_music/data/models/state/appState.dart';
import 'package:super_music/data/redux/actions.dart';
import 'package:super_music/data/redux/middleware.dart';
import 'package:super_music/data/redux/reducers.dart';
import 'package:super_music/screens/details.dart';
import 'package:super_music/screens/home.dart';
import 'package:super_music/screens/radios.dart';
import 'package:redux/redux.dart';

class App extends StatelessWidget {
  final Store<AppState> store = Store<AppState>(
    stateReducer,
    initialState: AppState.initialState(),
    middleware: [appStateMiddleware],
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Super Music',
        theme: themeBuilder(),
        onGenerateRoute: (RouteSettings settings) => routes(settings, store),
      ),
    );
  }

  Route routes(RouteSettings settings, Store<AppState> store) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) {
          return StoreBuilder(
            onInit: (store) => store.dispatch(SearchAction("jimi hendrix")),
            builder: (BuildContext context, Store<AppState> store) =>
                HomePage(title: "Super Music"),
          );
        });
      case "radios":
        return MaterialPageRoute(builder: (context) {
          return RadioPage(title: "Radios");
        });
      case "details":
        return MaterialPageRoute(builder: (context) {
          return DetailsPage(title: "Details");
        });
      default:
        return MaterialPageRoute(builder: (context) {
          return HomePage(title: "Super Music");
        });
    }
  }

  ThemeData themeBuilder() {
    return ThemeData(
        primaryColor: Colors.blueGrey[900],
        accentColor: Colors.yellowAccent[400],
        brightness: Brightness.dark,
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            color: Colors.blueGrey[900],
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.00),
            borderSide: BorderSide(color: Colors.blueGrey[900], width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.00),
            borderSide: BorderSide(color: Colors.blueGrey[900], width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.00),
            borderSide: BorderSide(color: Colors.cyan[700], width: 2),
          ),
          hintStyle: TextStyle(
            color: Colors.blueGrey[900],
          ),
          contentPadding: EdgeInsets.all(24),
        ),
        textTheme: TextTheme(
          display1: GoogleFonts.montserrat(),
          display2: GoogleFonts.montserrat(),
          display3: GoogleFonts.montserrat(),
          title: GoogleFonts.montserrat(),
          subtitle: GoogleFonts.openSans(),
          body1: GoogleFonts.openSans(),
          body2: GoogleFonts.openSans(),
        ));
  }
}
