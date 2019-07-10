import 'package:joinnus/src/models/event_model.dart';
import 'package:joinnus/src/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class EventsBloc {
  final _repository = Repository();

  final _eventsFetcher = PublishSubject<List<EventModel>>();
  Observable<List<EventModel>> get events => _eventsFetcher.stream;

  fetchEvents() async {
    List<EventModel> resourcesModel = await _repository.fetchEvents();
    _eventsFetcher.sink.add(resourcesModel);
  }

  dispose() {
    _eventsFetcher.close();
  }
}

final eventsBloc = EventsBloc();
