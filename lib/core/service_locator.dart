import 'package:get_it/get_it.dart';
import 'network_info/default_network_info.dart';
import '../features/events/data/data_sources/remote/client/event_client.dart';
import '../features/events/data/data_sources/remote/default_remote_event_data_source.dart';
import '../features/events/data/data_sources/remote/remote_event_data_source.dart';
import '../features/events/data/repositories/default_event_repository.dart';
import '../features/events/domain/repositories/event_repository.dart';
import '../features/events/domain/use_cases/load_event_snapshots_by_phrase.dart';
import '../features/events/domain/use_cases/load_events_by_category.dart';
import '../features/events/presentation/enums/event_category_enum.dart';
import '../features/events/presentation/pages/quick_search/bloc/quick_search_bloc.dart';

import '../features/events/presentation/pages/market/widgets/my_events/widgets/events_by_category_list/bloc/events_by_category_bloc.dart';
import 'client/dio_client.dart';

final sl = GetIt.instance;

void init() {
  //features
  _eventsFeatureInit();

  //core
  sl.registerLazySingleton(
    () => DefaultNetworkInfo(
      sl(),
    ),
  );
}

void _eventsFeatureInit() {
  //bloc
  sl.registerFactoryParam<EventsByCategoryBloc, EventCategory, void>(
    (eventCategory, _) => EventsByCategoryBloc(
      eventCategory: eventCategory,
      loadEventsByCategory: sl(),
    ),
  );

  sl.registerFactory(
    () => QuickSearchBloc(
      sl(),
    ),
  );

  //use cases
  sl.registerLazySingleton(
    () => LoadEventsByCategory(
      sl(),
    ),
  );

  sl.registerLazySingleton(
    () => LoadEventSnapshotsByPhrase(
      sl(),
    ),
  );

  //repository
  sl.registerLazySingleton<EventRepository>(
    () => DefaultEventRepository(
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );

  //data sources
  sl.registerLazySingleton<RemoteEventDataSource>(
    () => DefaultRemoteEventDataSource(
      sl(),
    ),
  );

  //
  final dio = buildDioClient();
  sl.registerLazySingleton(
    () => EventClient(
      dio,
    ),
  );
}
