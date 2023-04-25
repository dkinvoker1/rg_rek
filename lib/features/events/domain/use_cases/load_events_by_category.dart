import 'package:dartz/dartz.dart';

import '../../../../core/domain/use_case.dart';
import '../../../../core/errors/failures.dart';
import '../entities/event.dart';
import '../repositories/event_repository.dart';

class LoadEventsByCategory implements UseCase<List<Event>, String> {
  final EventRepository repository;

  LoadEventsByCategory(this.repository);

  @override
  Future<Either<Failure, List<Event>>> call(String categoryId) {
    return repository.getEventsByCategory(categoryId);
  }
}
