import '../../../../../core/errors/exceptions.dart';
import '../../models/event_model.dart';
import '../../models/event_snapshot_model.dart';
import 'client/body_models/event_quick_search_body_model.dart';
import 'client/event_client.dart';
import 'remote_event_data_source.dart';

class DefaultRemoteEventDataSource implements RemoteEventDataSource {
  final EventClient client;

  DefaultRemoteEventDataSource(this.client);

  @override
  Future<List<EventModel>> getEventsByCategory(int categoryId) async {
    try {
      return await client.getEventsByCategory(categoryId);
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<EventSnapshotModel>> getEventSnapshotsByPhrase(
      String phrase) async {
    try {
      var body = EventQuickSearchBodyModel(pattern: phrase);
      return await client.getEventSnapshotsByPhrase(body);
    } catch (e) {
      throw ServerException();
    }
  }
}
