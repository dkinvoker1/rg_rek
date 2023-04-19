import 'package:rg_rek/features/events/data/models/event_snapshot_model.dart';

import '../../models/event_model.dart';

abstract class EventRemoteDataSource {
  Future<List<EventModel>> getEventsByCategory(int categoryId);
  Future<List<EventSnapshotModel>> getEventSnapshotsByPhrase(String phrase);
}
