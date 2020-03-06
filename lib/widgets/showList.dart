import 'package:flutter/material.dart';
import 'package:super_music/data/models/api/searchResult.dart';
import 'package:super_music/utility/utility.dart';

class ShowList extends StatelessWidget {
  final List<SearchResult> dataList;
  final bool dark;

  ShowList(this.dataList, this.dark);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white24,
              backgroundImage: NetworkImage(dataList[index].album.coverSmall),
            ),
            trailing: Icon(Icons.album, color: Theme.of(context).accentColor),
            title: Text(
              '${dataList[index].artist.name}',
              style: dark
                  ? Theme.of(context).textTheme.title
                  : darkText(context, true),
            ),
            subtitle: Text(
              '${dataList[index].title}',
              style: dark
                  ? Theme.of(context).textTheme.subtitle
                  : darkText(context, false),
            ),
            onTap: () => Navigator.pushNamed(
              context,
              "details",
              arguments: dataList[index].album.id,
            ),
          );
        });
  }
}
