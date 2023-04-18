import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/event.dart';

abstract class EventRepository {
  Future<Either<Failure, List<Event>>> getEventsByCategory(int categoryId);
}
