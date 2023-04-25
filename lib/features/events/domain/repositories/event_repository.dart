import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/event.dart';
import '../entities/event_snapshot.dart';

abstract class EventRepository {
  Future<Either<Failure, List<Event>>> getEventsByCategory(String categoryId);
  
  Future<Either<Failure, List<EventSnapshot>>> getEventSnapshotsByPhrase(String phrase);
}
