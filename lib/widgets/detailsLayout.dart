import 'package:flutter/material.dart';
import 'package:super_music/data/models/state/viewmodels/detailsView.dart';
import 'package:super_music/widgets/trackList.dart';

class DetailsLayout extends StatelessWidget {
  final DetailsView model;

  DetailsLayout(this.model);

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
                _buildTopContainer(
                  context,
                  model,
                ),
                _buildBottomContainer(
                  context,
                  model,
                  viewportConstraints,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  _buildTopContainer(
    BuildContext context,
    DetailsView model,
  ) {
    return Container(
      height: 200,
      padding: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.only(right: 24),
              child: AspectRatio(
                aspectRatio: 1,
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).accentColor,
                  backgroundImage: NetworkImage(
                    model.details.artist.pictureBig,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Text(
              model.details.artist.name,
              maxLines: 2,
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.display2.fontSize,
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildBottomContainer(
    BuildContext context,
    DetailsView model,
    BoxConstraints viewportConstraints,
  ) {
    return Container(
      height: viewportConstraints.maxHeight - 200,
      padding: EdgeInsets.only(top: 64, left: 8, right: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(124)),
      ),
      child: TrackList(model.details.tracks),
    );
  }
}
