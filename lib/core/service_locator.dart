import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:rg_rek/features/events/presentation/pages/market/widgets/tab_bar_pages/my_events/bloc/my_events_bloc.dart';
import 'package:rg_rek/features/events/presentation/widgets/event_card_widget/widgets/outcomes_widget/bloc/outcomes_bloc.dart';

import '../features/events/data/data_sources/remote/client/event_client.dart';
import '../features/events/data/data_sources/remote/default_remote_event_data_source.dart';
import '../features/events/data/data_sources/remote/remote_event_data_source.dart';
import '../features/events/data/repositories/default_event_repository.dart';
import '../features/events/domain/repositories/event_repository.dart';
import '../features/events/domain/use_cases/load_event_snapshots_by_phrase.dart';
import '../features/events/domain/use_cases/load_events_by_category.dart';
import '../features/events/presentation/pages/quick_search/bloc/quick_search_bloc.dart';
import 'client/dio_client.dart';
import 'network_info/default_network_info.dart';
import 'network_info/network_info.dart';

final sl = GetIt.instance;

void init() {
  //features
  _eventsFeatureInit();

  //core
  sl.registerLazySingleton<NetworkInfo>(
    () => DefaultNetworkInfo(
      sl(),
    ),
  );

  //external
  sl.registerLazySingleton(
    () => InternetConnectionChecker(),
  );
}

void _eventsFeatureInit() {
  //bloc
  sl.registerFactory(
    () => MyEventsBloc(
      sl(),
    ),
  );

  sl.registerFactory(
    () => OutcomesBloc(),
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
