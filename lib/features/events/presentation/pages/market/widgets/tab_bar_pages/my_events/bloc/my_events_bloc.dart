import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rg_rek/features/events/domain/entities/game_outcome.dart';
import 'package:rg_rek/features/events/presentation/enums/event_category_enum.dart';
import 'package:collection/collection.dart';

import '../../../../../../../../../core/errors/failures.dart';
import '../../../../../../../domain/entities/event.dart';
import '../../../../../../../domain/use_cases/load_events_by_category.dart';

part 'my_events_event.dart';
part 'my_events_state.dart';
part 'my_events_bloc.freezed.dart';

class MyEventsBloc extends Bloc<MyEventsEvent, MyEventsState> {
  final LoadEventsByCategory loadEventsByCategory;

  MyEventsBloc(this.loadEventsByCategory)
      : super(const MyEventsState.initial()) {
    on<_Load>(
      (event, emit) async {
        emit(const MyEventsState.loading());

        var categoriesString = EventCategory.values.fold(
          '',
          (previousValue, element) => previousValue + element.value.toString(),
        );
        var split = categoriesString.split('');
        categoriesString = split.join(',');

        var events = await loadEventsByCategory(categoriesString);

        events.fold(
          (failure) => failure.when(
            serverFailure: (_) => emit(
              MyEventsState.error(serverFailureString),
            ),
            connectionFailure: (_) => emit(
              MyEventsState.error(connectionFailureString),
            ),
          ),
          (succes) => succes.isNotEmpty
              ? emit(MyEventsState.loaded(sortEvents(succes), null))
              : emit(const MyEventsState.loadedEmpty()),
        );
      },
    );

    on<_ExpandCategory>(
      (event, emit) async {
        state.mapOrNull(
          loaded: (value) {
            var eventsByCategory = value.eventsByCategory
                .map(
                  (e) => e.copyWith(
                    isExpanded: event.category == e.eventCategory
                        ? !e.isExpanded
                        : e.isExpanded,
                  ),
                )
                .toList();

            emit(
              MyEventsState.loaded(
                eventsByCategory,
                value.filterByCategory,
              ),
            );
          },
        );
      },
    );

    on<_FilterByCategory>(
      (event, emit) async {
        state.mapOrNull(
          loaded: (value) {
            emit(MyEventsState.loaded(
              value.eventsByCategory,
              event.category,
            ));
          },
        );
      },
    );
  }

  List<EventsByCategory1> sortEvents(List<Event> events) {
    var gamesData = events
        .map(
          (event) => event.eventGames.map(
            (game) => GameCardData(
              category1Id: event.category1Id,
              category1Name: event.category1Name,
              gameType: game.gameType,
              gameName: game.gameName,
              category3Id: event.category3Id,
              category2Name: event.category2Name,
              category3Name: event.category3Name,
              eventStart: event.eventStart,
              outcomes: getSelectableOutcomes(game.outcomes),
            ),
          ),
        )
        .expand((element) => element)
        .toList();

    return groupBy(gamesData, (p0) => p0.category1Id)
        .entries
        .map(
          (category1Games) => EventsByCategory1(
            eventCategory: EventCategory.values.firstWhere(
              (category) => category.value == category1Games.key,
            ),
            gamesCount: category1Games.value.length,
            gamesByType: getGamesByType(category1Games.value),
            isExpanded: false,
          ),
        )
        .toList();
  }

  List<SelectableOutcome> getSelectableOutcomes(List<GameOutcome> outcomes) {
    return outcomes
        .map(
          (e) => SelectableOutcome(isSelected: false, outcome: e),
        )
        .toList();
  }

  List<GamesByGameType> getGamesByType(List<GameCardData> games) {
    return groupBy(games, (p0) => p0.gameType)
        .entries
        .map(
          (typeGames) => GamesByGameType(
            gameName: typeGames.value.first.gameName,
            gamesByCategory3: getGamesByCategory3(typeGames.value),
          ),
        )
        .toList();
  }

  List<GamesByCategory3> getGamesByCategory3(List<GameCardData> games) {
    return groupBy(games, (p0) => p0.category3Id)
        .entries
        .map(
          (category3Games) => GamesByCategory3(
            category2Name: category3Games.value.first.category2Name,
            category3Name: category3Games.value.first.category3Name,
            games: category3Games.value,
          ),
        )
        .toList();
  }
}
