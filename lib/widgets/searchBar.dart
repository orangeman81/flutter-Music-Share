import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Artist',
        hintText: "look for an Album",
      ),
      style: TextStyle(
        color: Colors.black87,
      ),
      onChanged: (event) => print("from " + event.toString()),
    );
  }
}
