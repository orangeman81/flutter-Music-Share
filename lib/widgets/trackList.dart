import 'package:flutter/material.dart';
import 'package:super_music/data/models/api/details.dart';

class TrackList extends StatelessWidget {
  final List<Tracks> dataList;

  TrackList(this.dataList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return ListTile(
            trailing: Icon(Icons.play_circle_filled, color: Theme.of(context).primaryColor),
            title: Text(
              '${dataList[index].titleShort}',
              style: TextStyle(
                fontFamily: Theme.of(context).textTheme.title.fontFamily,
                fontSize: Theme.of(context).textTheme.title.fontSize,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            subtitle: Text('${dataList[index].artist.name}',
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.subtitle.fontFamily,
                  fontSize: Theme.of(context).textTheme.subtitle.fontSize,
                  color: Colors.black87,
                )),
          );
        });
  }
}
