import 'package:flutter/material.dart';
import 'package:joinnus/src/blocs/components.dart';
import 'package:joinnus/src/models/activity_model.dart';
import 'package:joinnus/src/ui/event_detail.dart';

class ActivitiesList extends StatefulWidget {
  final List<ActivityModel> activities;

  const ActivitiesList({Key key, this.activities}) : super(key: key);
  @override
  _ActivitiesListState createState() => _ActivitiesListState();
}

class _ActivitiesListState extends State<ActivitiesList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widget.activities
          .map(
            (activity) => GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                margin: EdgeInsets.all(8),
                child: Stack(
                  children: <Widget>[
                    components.image(activity.imageUrl),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        activity.title,
                        style: Theme.of(context).textTheme.title,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => EventDetail(
                      activity: activity,
                    ),
                  ),
                );
              },
            ),
          )
          .toList(),
    );
  }
}
