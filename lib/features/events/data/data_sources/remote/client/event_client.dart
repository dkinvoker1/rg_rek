import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/event_model.dart';
import '../../../models/event_snapshot_model.dart';
import 'body_models/event_quick_search_body_model.dart';

part 'event_client.g.dart';

@RestApi()
abstract class EventClient {
  factory EventClient(Dio dio) = _EventClient;

  @GET('/market/categories/multi/{categoryId}/events')
  Future<List<EventModel>> getEventsByCategory(int categoryId);

  @POST('/search/events/quick-search')
  Future<List<EventSnapshotModel>> getEventSnapshotsByPhrase(
    @Body() EventQuickSearchBodyModel body,
  );
}
