import 'package:flutter/material.dart';
import 'package:super_music/utility/utility.dart';

class ShowList extends StatelessWidget {
  final List<ListItem> dataList;

  ShowList(this.dataList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.cyan[700],
              child: Icon(Icons.album, color: Theme.of(context).accentColor),
            ),
            title: Text(
              '${dataList[index].artist}',
              style: Theme.of(context).textTheme.title,
            ),
            subtitle: Text(
              '${dataList[index].album}',
              style: Theme.of(context).textTheme.subtitle,
            ),
            onTap: () => Navigator.pushNamed(context, "details"),
          );
        });
  }
}
