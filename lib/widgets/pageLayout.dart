import 'package:flutter/material.dart';
import 'package:super_music/data/models/api/searchResult.dart';
import 'package:super_music/widgets/searchBar.dart';
import 'package:super_music/widgets/showList.dart';

class PageLayout extends StatelessWidget {
  final List<SearchResult> data;
  final bool withSearch;

  PageLayout(this.data, this.withSearch);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 100,
                  padding: EdgeInsets.all(16),
                  child: withSearch
                      ? SearchBar()
                      : Text(
                          data[0].artist.name,
                          style: TextStyle(
                            fontSize:
                                Theme.of(context).textTheme.display2.fontSize,
                                color: Colors.black87
                          ),
                        ),
                ),
                Container(
                  height: viewportConstraints.maxHeight - 100,
                  padding: EdgeInsets.only(top: 64, left: 8, right: 8),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(124)),
                  ),
                  child: ShowList(data),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
