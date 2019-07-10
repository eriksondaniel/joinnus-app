import 'package:flutter/material.dart';
import 'package:joinnus/global.dart';
import 'package:joinnus/src/blocs/activities_list.dart';
import 'package:joinnus/src/blocs/events_bloc.dart';
import 'package:joinnus/src/models/event_model.dart';
import 'package:joinnus/src/blocs/components.dart';

class Home extends StatefulWidget {
  final String title;

  const Home({Key key, this.title}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    eventsBloc.fetchEvents();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: components.appBarJoinnus(LOGO, 40),
      body: StreamBuilder(
        stream: eventsBloc.events,
        builder: (context, AsyncSnapshot<List<EventModel>> snapshot) {
          if (snapshot.hasData) {
            return ActivitiesList( 
              activities: snapshot.data[0].activities,
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}

