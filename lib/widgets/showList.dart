import 'package:flutter/material.dart';
import 'package:super_music/data/models/api/searchResult.dart';

class ShowList extends StatelessWidget {
  final List<SearchResult> dataList;

  ShowList(this.dataList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white24,
              child: Icon(Icons.album, color: Theme.of(context).accentColor),
            ),
            title: Text(
              '${dataList[index].artist.name}',
              style: Theme.of(context).textTheme.title,
            ),
            subtitle: Text(
              '${dataList[index].title}',
              style: Theme.of(context).textTheme.subtitle,
            ),
            onTap: () => Navigator.pushNamed(context, "details"),
          );
        });
  }
}
