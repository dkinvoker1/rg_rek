// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'outcomes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OutcomesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SelectableOutcome> outcomes) initialise,
    required TResult Function(int outcomeId) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SelectableOutcome> outcomes)? initialise,
    TResult? Function(int outcomeId)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SelectableOutcome> outcomes)? initialise,
    TResult Function(int outcomeId)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_Select value) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialise value)? initialise,
    TResult? Function(_Select value)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutcomesEventCopyWith<$Res> {
  factory $OutcomesEventCopyWith(
          OutcomesEvent value, $Res Function(OutcomesEvent) then) =
      _$OutcomesEventCopyWithImpl<$Res, OutcomesEvent>;
}

/// @nodoc
class _$OutcomesEventCopyWithImpl<$Res, $Val extends OutcomesEvent>
    implements $OutcomesEventCopyWith<$Res> {
  _$OutcomesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialiseCopyWith<$Res> {
  factory _$$_InitialiseCopyWith(
          _$_Initialise value, $Res Function(_$_Initialise) then) =
      __$$_InitialiseCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SelectableOutcome> outcomes});
}

/// @nodoc
class __$$_InitialiseCopyWithImpl<$Res>
    extends _$OutcomesEventCopyWithImpl<$Res, _$_Initialise>
    implements _$$_InitialiseCopyWith<$Res> {
  __$$_InitialiseCopyWithImpl(
      _$_Initialise _value, $Res Function(_$_Initialise) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outcomes = null,
  }) {
    return _then(_$_Initialise(
      null == outcomes
          ? _value._outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<SelectableOutcome>,
    ));
  }
}

/// @nodoc

class _$_Initialise implements _Initialise {
  const _$_Initialise(final List<SelectableOutcome> outcomes)
      : _outcomes = outcomes;

  final List<SelectableOutcome> _outcomes;
  @override
  List<SelectableOutcome> get outcomes {
    if (_outcomes is EqualUnmodifiableListView) return _outcomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outcomes);
  }

  @override
  String toString() {
    return 'OutcomesEvent.initialise(outcomes: $outcomes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialise &&
            const DeepCollectionEquality().equals(other._outcomes, _outcomes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_outcomes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialiseCopyWith<_$_Initialise> get copyWith =>
      __$$_InitialiseCopyWithImpl<_$_Initialise>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SelectableOutcome> outcomes) initialise,
    required TResult Function(int outcomeId) select,
  }) {
    return initialise(outcomes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SelectableOutcome> outcomes)? initialise,
    TResult? Function(int outcomeId)? select,
  }) {
    return initialise?.call(outcomes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SelectableOutcome> outcomes)? initialise,
    TResult Function(int outcomeId)? select,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(outcomes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_Select value) select,
  }) {
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialise value)? initialise,
    TResult? Function(_Select value)? select,
  }) {
    return initialise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(this);
    }
    return orElse();
  }
}

abstract class _Initialise implements OutcomesEvent {
  const factory _Initialise(final List<SelectableOutcome> outcomes) =
      _$_Initialise;

  List<SelectableOutcome> get outcomes;
  @JsonKey(ignore: true)
  _$$_InitialiseCopyWith<_$_Initialise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectCopyWith<$Res> {
  factory _$$_SelectCopyWith(_$_Select value, $Res Function(_$_Select) then) =
      __$$_SelectCopyWithImpl<$Res>;
  @useResult
  $Res call({int outcomeId});
}

/// @nodoc
class __$$_SelectCopyWithImpl<$Res>
    extends _$OutcomesEventCopyWithImpl<$Res, _$_Select>
    implements _$$_SelectCopyWith<$Res> {
  __$$_SelectCopyWithImpl(_$_Select _value, $Res Function(_$_Select) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outcomeId = null,
  }) {
    return _then(_$_Select(
      null == outcomeId
          ? _value.outcomeId
          : outcomeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Select implements _Select {
  const _$_Select(this.outcomeId);

  @override
  final int outcomeId;

  @override
  String toString() {
    return 'OutcomesEvent.select(outcomeId: $outcomeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Select &&
            (identical(other.outcomeId, outcomeId) ||
                other.outcomeId == outcomeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, outcomeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCopyWith<_$_Select> get copyWith =>
      __$$_SelectCopyWithImpl<_$_Select>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SelectableOutcome> outcomes) initialise,
    required TResult Function(int outcomeId) select,
  }) {
    return select(outcomeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SelectableOutcome> outcomes)? initialise,
    TResult? Function(int outcomeId)? select,
  }) {
    return select?.call(outcomeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SelectableOutcome> outcomes)? initialise,
    TResult Function(int outcomeId)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(outcomeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_Select value) select,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialise value)? initialise,
    TResult? Function(_Select value)? select,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements OutcomesEvent {
  const factory _Select(final int outcomeId) = _$_Select;

  int get outcomeId;
  @JsonKey(ignore: true)
  _$$_SelectCopyWith<_$_Select> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OutcomesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SelectableOutcome> outcomes) initialised,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<SelectableOutcome> outcomes)? initialised,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SelectableOutcome> outcomes)? initialised,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialised value) initialised,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialised value)? initialised,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutcomesStateCopyWith<$Res> {
  factory $OutcomesStateCopyWith(
          OutcomesState value, $Res Function(OutcomesState) then) =
      _$OutcomesStateCopyWithImpl<$Res, OutcomesState>;
}

/// @nodoc
class _$OutcomesStateCopyWithImpl<$Res, $Val extends OutcomesState>
    implements $OutcomesStateCopyWith<$Res> {
  _$OutcomesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$OutcomesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OutcomesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SelectableOutcome> outcomes) initialised,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<SelectableOutcome> outcomes)? initialised,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SelectableOutcome> outcomes)? initialised,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialised value) initialised,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialised value)? initialised,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OutcomesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_InitialisedCopyWith<$Res> {
  factory _$$_InitialisedCopyWith(
          _$_Initialised value, $Res Function(_$_Initialised) then) =
      __$$_InitialisedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SelectableOutcome> outcomes});
}

/// @nodoc
class __$$_InitialisedCopyWithImpl<$Res>
    extends _$OutcomesStateCopyWithImpl<$Res, _$_Initialised>
    implements _$$_InitialisedCopyWith<$Res> {
  __$$_InitialisedCopyWithImpl(
      _$_Initialised _value, $Res Function(_$_Initialised) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outcomes = null,
  }) {
    return _then(_$_Initialised(
      null == outcomes
          ? _value._outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<SelectableOutcome>,
    ));
  }
}

/// @nodoc

class _$_Initialised implements _Initialised {
  const _$_Initialised(final List<SelectableOutcome> outcomes)
      : _outcomes = outcomes;

  final List<SelectableOutcome> _outcomes;
  @override
  List<SelectableOutcome> get outcomes {
    if (_outcomes is EqualUnmodifiableListView) return _outcomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outcomes);
  }

  @override
  String toString() {
    return 'OutcomesState.initialised(outcomes: $outcomes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialised &&
            const DeepCollectionEquality().equals(other._outcomes, _outcomes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_outcomes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialisedCopyWith<_$_Initialised> get copyWith =>
      __$$_InitialisedCopyWithImpl<_$_Initialised>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SelectableOutcome> outcomes) initialised,
  }) {
    return initialised(outcomes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<SelectableOutcome> outcomes)? initialised,
  }) {
    return initialised?.call(outcomes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SelectableOutcome> outcomes)? initialised,
    required TResult orElse(),
  }) {
    if (initialised != null) {
      return initialised(outcomes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialised value) initialised,
  }) {
    return initialised(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialised value)? initialised,
  }) {
    return initialised?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    required TResult orElse(),
  }) {
    if (initialised != null) {
      return initialised(this);
    }
    return orElse();
  }
}

abstract class _Initialised implements OutcomesState {
  const factory _Initialised(final List<SelectableOutcome> outcomes) =
      _$_Initialised;

  List<SelectableOutcome> get outcomes;
  @JsonKey(ignore: true)
  _$$_InitialisedCopyWith<_$_Initialised> get copyWith =>
      throw _privateConstructorUsedError;
}
