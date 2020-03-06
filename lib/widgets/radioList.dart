import 'package:flutter/material.dart';
import 'package:super_music/data/models/api/radioArguments.dart';
import 'package:super_music/data/models/api/radioResult.dart';
import 'package:super_music/utility/utility.dart';

class RadioList extends StatelessWidget {
  final List<RadioResult> dataList;

  RadioList(this.dataList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white24,
              backgroundImage: NetworkImage(dataList[index].pictureSmall),
            ),
            // trailing: Icon(Icons.radio, color: Theme.of(context).primaryColor),
            title: Text(
              '${dataList[index].title}',
              style: darkText(context, true),
            ),
            onTap: () => Navigator.pushNamed(
              context,
              "radioDetails",
              arguments: new RadioArguments(
                id: dataList[index].id,
                title: dataList[index].title,
                cover: dataList[index].pictureBig,
              ),
            ),
          );
        });
  }
}
