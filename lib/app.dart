import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_music/screens/details.dart';
import 'package:super_music/screens/home.dart';
import 'package:super_music/screens/radios.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Super Music',
      theme: ThemeData(
        primaryColor: Colors.cyan[900],
        accentColor: Colors.yellowAccent[400],
        brightness: Brightness.dark,
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            color: Colors.cyan[900],
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.00),
            borderSide: BorderSide(color: Colors.cyan[900], width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.00),
            borderSide: BorderSide(color: Colors.cyan[900], width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.00),
            borderSide: BorderSide(color: Colors.cyan[700], width: 2),
          ),
          hintStyle: TextStyle(
            color: Colors.cyan[900],
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
        )
      ),
      onGenerateRoute: routes,
    );
  }

  Route routes(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) {
          return HomePage(title: "Super Music");
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
}
