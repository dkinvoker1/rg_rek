// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_quick_search_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventQuickSearchBodyModel {
  List<Area> get areas => throw _privateConstructorUsedError;
  String get languageCode => throw _privateConstructorUsedError;
  List<Mode> get modes => throw _privateConstructorUsedError;
  String get pattern => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventQuickSearchBodyModelCopyWith<EventQuickSearchBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventQuickSearchBodyModelCopyWith<$Res> {
  factory $EventQuickSearchBodyModelCopyWith(EventQuickSearchBodyModel value,
          $Res Function(EventQuickSearchBodyModel) then) =
      _$EventQuickSearchBodyModelCopyWithImpl<$Res, EventQuickSearchBodyModel>;
  @useResult
  $Res call(
      {List<Area> areas,
      String languageCode,
      List<Mode> modes,
      String pattern});
}

/// @nodoc
class _$EventQuickSearchBodyModelCopyWithImpl<$Res,
        $Val extends EventQuickSearchBodyModel>
    implements $EventQuickSearchBodyModelCopyWith<$Res> {
  _$EventQuickSearchBodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areas = null,
    Object? languageCode = null,
    Object? modes = null,
    Object? pattern = null,
  }) {
    return _then(_value.copyWith(
      areas: null == areas
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<Area>,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      modes: null == modes
          ? _value.modes
          : modes // ignore: cast_nullable_to_non_nullable
              as List<Mode>,
      pattern: null == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventQuickSearchBodyModelCopyWith<$Res>
    implements $EventQuickSearchBodyModelCopyWith<$Res> {
  factory _$$_EventQuickSearchBodyModelCopyWith(
          _$_EventQuickSearchBodyModel value,
          $Res Function(_$_EventQuickSearchBodyModel) then) =
      __$$_EventQuickSearchBodyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Area> areas,
      String languageCode,
      List<Mode> modes,
      String pattern});
}

/// @nodoc
class __$$_EventQuickSearchBodyModelCopyWithImpl<$Res>
    extends _$EventQuickSearchBodyModelCopyWithImpl<$Res,
        _$_EventQuickSearchBodyModel>
    implements _$$_EventQuickSearchBodyModelCopyWith<$Res> {
  __$$_EventQuickSearchBodyModelCopyWithImpl(
      _$_EventQuickSearchBodyModel _value,
      $Res Function(_$_EventQuickSearchBodyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areas = null,
    Object? languageCode = null,
    Object? modes = null,
    Object? pattern = null,
  }) {
    return _then(_$_EventQuickSearchBodyModel(
      areas: null == areas
          ? _value._areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<Area>,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      modes: null == modes
          ? _value._modes
          : modes // ignore: cast_nullable_to_non_nullable
              as List<Mode>,
      pattern: null == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventQuickSearchBodyModel implements _EventQuickSearchBodyModel {
  _$_EventQuickSearchBodyModel(
      {final List<Area> areas = Area.values,
      this.languageCode = 'pl',
      final List<Mode> modes = Mode.values,
      required this.pattern})
      : _areas = areas,
        _modes = modes;

  final List<Area> _areas;
  @override
  @JsonKey()
  List<Area> get areas {
    if (_areas is EqualUnmodifiableListView) return _areas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_areas);
  }

  @override
  @JsonKey()
  final String languageCode;
  final List<Mode> _modes;
  @override
  @JsonKey()
  List<Mode> get modes {
    if (_modes is EqualUnmodifiableListView) return _modes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modes);
  }

  @override
  final String pattern;

  @override
  String toString() {
    return 'EventQuickSearchBodyModel(areas: $areas, languageCode: $languageCode, modes: $modes, pattern: $pattern)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventQuickSearchBodyModel &&
            const DeepCollectionEquality().equals(other._areas, _areas) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            const DeepCollectionEquality().equals(other._modes, _modes) &&
            (identical(other.pattern, pattern) || other.pattern == pattern));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_areas),
      languageCode,
      const DeepCollectionEquality().hash(_modes),
      pattern);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventQuickSearchBodyModelCopyWith<_$_EventQuickSearchBodyModel>
      get copyWith => __$$_EventQuickSearchBodyModelCopyWithImpl<
          _$_EventQuickSearchBodyModel>(this, _$identity);
}

abstract class _EventQuickSearchBodyModel implements EventQuickSearchBodyModel {
  factory _EventQuickSearchBodyModel(
      {final List<Area> areas,
      final String languageCode,
      final List<Mode> modes,
      required final String pattern}) = _$_EventQuickSearchBodyModel;

  @override
  List<Area> get areas;
  @override
  String get languageCode;
  @override
  List<Mode> get modes;
  @override
  String get pattern;
  @override
  @JsonKey(ignore: true)
  _$$_EventQuickSearchBodyModelCopyWith<_$_EventQuickSearchBodyModel>
      get copyWith => throw _privateConstructorUsedError;
}
