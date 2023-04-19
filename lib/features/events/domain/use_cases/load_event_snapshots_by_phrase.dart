import 'package:dartz/dartz.dart';

import '../../../../core/domain/use_case.dart';
import '../../../../core/errors/failures.dart';
import '../entities/event_snapshot.dart';
import '../repositories/event_repository.dart';

class LoadEventSnapshotsByPhrase
    implements UseCase<List<EventSnapshot>, String> {
  final EventRepository repository;

  LoadEventSnapshotsByPhrase(this.repository);

  @override
  Future<Either<Failure, List<EventSnapshot>>> call(String phrase) {
    return repository.getEventSnapshotsByPhrase(phrase);
  }
}
