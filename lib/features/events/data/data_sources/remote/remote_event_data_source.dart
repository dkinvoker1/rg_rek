import '../../models/event_model.dart';
import '../../models/event_snapshot_model.dart';

abstract class RemoteEventDataSource {
  Future<List<EventModel>> getEventsByCategory(String categoryId);
  Future<List<EventSnapshotModel>> getEventSnapshotsByPhrase(String phrase);
}
