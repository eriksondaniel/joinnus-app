import 'package:flutter/material.dart';
import 'package:joinnus/global.dart';
import 'package:joinnus/src/blocs/components.dart';
import 'package:joinnus/src/models/activity_model.dart';

class EventDetail extends StatelessWidget {
  final ActivityModel activity;

  const EventDetail({Key key, this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: components.appBarJoinnus(LOGOSECONDARY, 30),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 8, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: (MediaQuery.of(context).size.width / 4) * 3 - 15,
                    child: Text(
                      activity.title,
                      style: Theme.of(context).textTheme.title,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 4 - 15,
                    child: Text(
                      "S/. ${activity.price.toString()}.00",
                      style: Theme.of(context).textTheme.subhead,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              components.image(activity.imageUrl),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Text('Fecha', style: Theme.of(context).textTheme.subtitle),
                  Spacer(),
                  Text(activity.dateEnd.toString()),
                ],
              ),
              SizedBox(height: 20),
              Text('Dirección', style: Theme.of(context).textTheme.subtitle),
              Row(
                children: <Widget>[
                  Text(activity.city.toUpperCase()),
                  Text(", ${activity.currency}"),
                ],
              ),
              Text(activity.address),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Text('Categoría',
                      style: Theme.of(context).textTheme.subtitle),
                  Spacer(),
                  Text(activity.category),
                ],
              ),
              SizedBox(height: 20),
              Text('Información', style: Theme.of(context).textTheme.subtitle),
              SizedBox(height: 10),
              Text(activity.information),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 0,
        icon: Icon(Icons.add),
        label: Text("COMPRAR AHORA"),
        onPressed: () {
          print("COMPRAR");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
