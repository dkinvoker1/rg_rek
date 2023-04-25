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
  Future<List<EventModel>> getEventsByCategory(String categoryId) async {
    try {
      var response = await client.getEventsByCategory(categoryId);
      return response.data;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<EventSnapshotModel>> getEventSnapshotsByPhrase(
      String phrase) async {
    try {
      var body = EventQuickSearchBodyModel(pattern: phrase);
      var response = await client.getEventSnapshotsByPhrase(body);
      return response.data;
    } catch (e) {
      throw ServerException();
    }
  }
}
