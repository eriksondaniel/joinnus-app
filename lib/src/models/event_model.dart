// To parse this JSON data, do
//
//     final eventModel = eventModelFromJson(jsonString);

import 'dart:convert';

import 'package:joinnus/src/models/activity_model.dart';

List<EventModel> eventModelFromJson(String str) => new List<EventModel>.from(
    json.decode(str).map((x) => EventModel.fromJson(x)));

String eventModelToJson(List<EventModel> data) =>
    json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

List<EventModel> allEventModelFromJson(String str) {
  final jsonData = json.decode(str);
  return List<EventModel>.from(jsonData.map((x) => EventModel.fromJson(x)));
}

class EventModel {
  int id;
  String name;
  String slug;
  int state;
  DateTime creationDate;
  DateTime updateDate;
  String domain;
  int idLanguages;
  List<ActivityModel> activities;

  EventModel({
    this.id,
    this.name,
    this.slug,
    this.state,
    this.creationDate,
    this.updateDate,
    this.domain,
    this.idLanguages,
    this.activities,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) => new EventModel(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        state: json["state"],
        creationDate: DateTime.parse(json["creationDate"]),
        updateDate: DateTime.parse(json["updateDate"]),
        domain: json["domain"],
        idLanguages: json["idLanguages"],
        activities: new List<ActivityModel>.from(
            json["activities"].map((x) => ActivityModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "state": state,
        "creationDate": creationDate.toIso8601String(),
        "updateDate": updateDate.toIso8601String(),
        "domain": domain,
        "idLanguages": idLanguages,
        "activities": new List<dynamic>.from(activities.map((x) => x.toJson())),
      };
}
