import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/network_info/network_info.dart';
import '../../domain/entities/event.dart';
import '../../domain/entities/event_snapshot.dart';
import '../../domain/repositories/event_repository.dart';
import '../data_sources/remote/remote_event_data_source.dart';

class DefaultEventRepository implements EventRepository {
  final NetworkInfo networkInfo;
  final RemoteEventDataSource remoteDataSource;

  DefaultEventRepository({
    required this.networkInfo,
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<Event>>> getEventsByCategory(
      String categoryId) async {
    if (!await networkInfo.isConnected) {
      return const Left(Failure.connectionFailure());
    }

    try {
      var eventsModel = await remoteDataSource.getEventsByCategory(categoryId);
      var events = eventsModel
          .map(
            (e) => Event.fromModel(e),
          )
          .toList();
      return Right(events);
    } catch (e) {
      return const Left(Failure.serverFailure());
    }
  }

  @override
  Future<Either<Failure, List<EventSnapshot>>> getEventSnapshotsByPhrase(
      String phrase) async {
    if (!await networkInfo.isConnected) {
      return const Left(Failure.connectionFailure());
    }

    try {
      var eventsModel =
          await remoteDataSource.getEventSnapshotsByPhrase(phrase);
      var events = eventsModel
          .map(
            (e) => EventSnapshot.fromModel(e),
          )
          .toList();
      return Right(events);
    } catch (e) {
      return const Left(Failure.serverFailure());
    }
  }
}
