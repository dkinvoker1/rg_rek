// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_quick_search_body_model.freezed.dart';
part 'event_quick_search_body_model.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class EventQuickSearchBodyModel with _$EventQuickSearchBodyModel {
  factory EventQuickSearchBodyModel({
    @Default(Area.values) List<Area> areas,
    @Default('pl') String languageCode,
    @Default(Mode.values) List<Mode> modes,
    required String pattern,
  }) = _EventQuickSearchBodyModel;
}

enum Area {
  CATEGORY,
  // LIVE,
  PREMATCH_EVENT,
}

enum Mode {
  INFIX,
  PREFIX,
}
