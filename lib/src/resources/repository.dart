import 'package:joinnus/src/models/event_model.dart';
import 'package:joinnus/src/resources/event_api_provider.dart';

class Repository {
  Future<List<EventModel>> fetchEvents() => eventApiProvider.fetchEvents();
}
