import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:joinnus/src/models/event_model.dart';

class EventApiProvider {
  Future<List<EventModel>> fetchEvents() async {
    print('getEvents');
    final response = await http.get('https://api.joinnus.com/v1/PE/events/');
    print(response.body);
    if (response.statusCode == 200) {
      return allEventModelFromJson(response.body);
    } else {
      throw Exception('Failed to load post');
    }
  }
}

final eventApiProvider = EventApiProvider();
