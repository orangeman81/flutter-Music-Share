import 'package:flutter/material.dart';
import 'package:super_music/data/models/state/viewmodels/radioView.dart';
import 'package:super_music/widgets/radioList.dart';

class RadioLayout extends StatelessWidget {
  final RadioView model;

  RadioLayout(this.model);

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
                  child: Text(
                    "Radio List",
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.display2.fontSize,
                    ),
                  ),
                ),
                Container(
                  height: viewportConstraints.maxHeight - 100,
                  padding: EdgeInsets.only(top: 64, left: 8, right: 8),
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(124)),
                  ),
                  child: RadioList(model.radioList),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
