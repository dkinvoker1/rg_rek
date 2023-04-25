import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/event_model.dart';
import '../../../models/event_snapshot_model.dart';
import '../../../models/response_model.dart';
import 'body_models/event_quick_search_body_model.dart';

part 'event_client.g.dart';

@RestApi()
abstract class EventClient {
  factory EventClient(Dio dio) = _EventClient;

  @GET('/market/categories/multi/{categoryId}/events')
  Future<ResponseModel<List<EventModel>>> getEventsByCategory(
    @Path() String categoryId,
  );

  @POST('/search/events/quick-search')
  Future<ResponseModel<List<EventSnapshotModel>>> getEventSnapshotsByPhrase(
    @Body() EventQuickSearchBodyModel body,
  );
}
