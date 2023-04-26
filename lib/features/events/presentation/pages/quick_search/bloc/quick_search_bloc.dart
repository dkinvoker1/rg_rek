import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_event_transformers/bloc_event_transformers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/entities/game_outcome.dart';
import '../../market/widgets/tab_bar_pages/my_events/bloc/my_events_bloc.dart';
import '../../../../domain/entities/event_snapshot.dart';
import '../../../../domain/use_cases/load_event_snapshots_by_phrase.dart';

import '../../../../../../core/errors/failures.dart';

part 'quick_search_event.dart';
part 'quick_search_state.dart';
part 'quick_search_bloc.freezed.dart';

class QuickSearchBloc extends Bloc<QuickSearchEvent, QuickSearchState> {
  final LoadEventSnapshotsByPhrase loadEventSnapshotsByPhrase;

  QuickSearchBloc(this.loadEventSnapshotsByPhrase)
      : super(const QuickSearchState.initial()) {
    on<_SearchByPhrase>(
      _sarchHandle,
      // transformer: throttle(
      //   const Duration(milliseconds: 500),
      //   leading: false,
      //   trailing: true,
      // ),
    );
  }

  FutureOr<void> _sarchHandle(event, emit) async {
    if (event.phrase.length < 3) {
      return;
    }

    emit(const QuickSearchState.loading());

    var eventSnapshotsList = await loadEventSnapshotsByPhrase(event.phrase);

    eventSnapshotsList.fold(
      (failure) => failure.when(
        serverFailure: (_) => emit(
          QuickSearchState.error(serverFailureString),
        ),
        connectionFailure: (_) => emit(
          QuickSearchState.error(connectionFailureString),
        ),
      ),
      (succes) => succes.isNotEmpty
          ? emit(QuickSearchState.loaded(getGamesData(succes)))
          : emit(const QuickSearchState.loadedEmpty()),
    );
  }

  List<GameCardData> getGamesData(List<EventSnapshot> snapshots) {
    return snapshots
        .map(
          (e) => GameCardData(
            category1Id: e.extras.categoryId1,
            category1Name: e.extras.categoryName1,
            gameType: 1,
            gameName: 'gameName',
            category2Name: e.extras.categoryName2,
            category3Id: e.extras.categoryId3,
            category3Name: e.extras.categoryName3,
            eventStart: e.eventStart,
            outcomes: [
              SelectableOutcome(
                isSelected: false,
                outcome: GameOutcome(
                  outcomeId: 1,
                  outcomeName: 'outcomeName',
                  outcomeOdds: 1.1,
                  status: 1,
                ),
              ),
              SelectableOutcome(
                isSelected: false,
                outcome: GameOutcome(
                  outcomeId: 1,
                  outcomeName: 'outcomeName',
                  outcomeOdds: 1.1,
                  status: 1,
                ),
              ),
            ],
          ),
        )
        .toList();
  }
}
