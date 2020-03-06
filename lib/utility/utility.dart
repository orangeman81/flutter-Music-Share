import 'package:flutter/material.dart';

TextStyle darkText(BuildContext context, bool title) {
  final theme = title
      ? Theme.of(context).textTheme.title
      : Theme.of(context).textTheme.subtitle;
  return TextStyle(
    fontFamily: theme.fontFamily,
    fontSize: theme.fontSize,
    fontWeight: title ? FontWeight.bold : FontWeight.normal,
    color: Theme.of(context).primaryColor,
  );
}
