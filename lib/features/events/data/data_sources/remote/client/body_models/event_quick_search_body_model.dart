// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_quick_search_body_model.freezed.dart';
part 'event_quick_search_body_model.g.dart';

@freezed
class EventQuickSearchBodyModel with _$EventQuickSearchBodyModel {
  factory EventQuickSearchBodyModel({
    @Default(['PREMATCH_EVENT']) List<String> areas,
    @Default('pl') String languageCode,
    @Default(['INFIX', 'PREFIX']) List<String> modes,
    required String pattern,
  }) = _EventQuickSearchBodyModel;

  factory EventQuickSearchBodyModel.fromJson(Map<String, Object?> json) =>
      _$EventQuickSearchBodyModelFromJson(json);
}
