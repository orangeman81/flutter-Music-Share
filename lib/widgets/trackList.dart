import 'package:flutter/material.dart';
import 'package:super_music/data/models/api/details.dart';
import 'package:super_music/utility/utility.dart';

class TrackList extends StatelessWidget {
  final List<Tracks> dataList;

  TrackList(this.dataList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return ListTile(
            trailing: Icon(Icons.play_circle_filled,
                color: Theme.of(context).primaryColor),
            title: Text(
              '${dataList[index].titleShort}',
              style: darkText(context, true),
            ),
            subtitle: Text(
              '${dataList[index].artist.name}',
              style: darkText(context, false),
            ),
          );
        });
  }
}
