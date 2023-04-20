import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rg_rek/features/events/domain/entities/event_snapshot.dart';
import 'package:rg_rek/features/events/domain/use_cases/load_event_snapshots_by_phrase.dart';

part 'quick_search_event.dart';
part 'quick_search_state.dart';
part 'quick_search_bloc.freezed.dart';

const String serverFailureString = 'Server Failure';
const String connectionFailureString = 'Connection Failure';

class QuickSearchBloc extends Bloc<QuickSearchEvent, QuickSearchState> {
  final LoadEventSnapshotsByPhrase loadEventSnapshotsByPhrase;

  QuickSearchBloc(this.loadEventSnapshotsByPhrase)
      : super(const QuickSearchState.initial()) {
    on<_SearchByPhrase>((event, emit) async {
      emit(const QuickSearchState.loading());

      var eventSnapshotsList = await loadEventSnapshotsByPhrase(event.phrase);

      eventSnapshotsList.fold(
        (failure) => failure.when(
          serverFailure: (_) =>
              emit(const QuickSearchState.error(serverFailureString)),
          connectionFailure: (_) =>
              emit(const QuickSearchState.error(connectionFailureString)),
        ),
        (succes) => succes.isNotEmpty
            ? emit(QuickSearchState.loaded(succes))
            : emit(const QuickSearchState.loadedEmpty()),
      );
    });
  }
}
