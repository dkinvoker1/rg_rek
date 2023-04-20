// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quick_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuickSearchEvent {
  String get phrase => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phrase) searchByPhrase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phrase)? searchByPhrase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phrase)? searchByPhrase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchByPhrase value) searchByPhrase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchByPhrase value)? searchByPhrase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchByPhrase value)? searchByPhrase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuickSearchEventCopyWith<QuickSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickSearchEventCopyWith<$Res> {
  factory $QuickSearchEventCopyWith(
          QuickSearchEvent value, $Res Function(QuickSearchEvent) then) =
      _$QuickSearchEventCopyWithImpl<$Res, QuickSearchEvent>;
  @useResult
  $Res call({String phrase});
}

/// @nodoc
class _$QuickSearchEventCopyWithImpl<$Res, $Val extends QuickSearchEvent>
    implements $QuickSearchEventCopyWith<$Res> {
  _$QuickSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrase = null,
  }) {
    return _then(_value.copyWith(
      phrase: null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchByPhraseCopyWith<$Res>
    implements $QuickSearchEventCopyWith<$Res> {
  factory _$$_SearchByPhraseCopyWith(
          _$_SearchByPhrase value, $Res Function(_$_SearchByPhrase) then) =
      __$$_SearchByPhraseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phrase});
}

/// @nodoc
class __$$_SearchByPhraseCopyWithImpl<$Res>
    extends _$QuickSearchEventCopyWithImpl<$Res, _$_SearchByPhrase>
    implements _$$_SearchByPhraseCopyWith<$Res> {
  __$$_SearchByPhraseCopyWithImpl(
      _$_SearchByPhrase _value, $Res Function(_$_SearchByPhrase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrase = null,
  }) {
    return _then(_$_SearchByPhrase(
      null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchByPhrase implements _SearchByPhrase {
  const _$_SearchByPhrase(this.phrase);

  @override
  final String phrase;

  @override
  String toString() {
    return 'QuickSearchEvent.searchByPhrase(phrase: $phrase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchByPhrase &&
            (identical(other.phrase, phrase) || other.phrase == phrase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phrase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchByPhraseCopyWith<_$_SearchByPhrase> get copyWith =>
      __$$_SearchByPhraseCopyWithImpl<_$_SearchByPhrase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phrase) searchByPhrase,
  }) {
    return searchByPhrase(phrase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phrase)? searchByPhrase,
  }) {
    return searchByPhrase?.call(phrase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phrase)? searchByPhrase,
    required TResult orElse(),
  }) {
    if (searchByPhrase != null) {
      return searchByPhrase(phrase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchByPhrase value) searchByPhrase,
  }) {
    return searchByPhrase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchByPhrase value)? searchByPhrase,
  }) {
    return searchByPhrase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchByPhrase value)? searchByPhrase,
    required TResult orElse(),
  }) {
    if (searchByPhrase != null) {
      return searchByPhrase(this);
    }
    return orElse();
  }
}

abstract class _SearchByPhrase implements QuickSearchEvent {
  const factory _SearchByPhrase(final String phrase) = _$_SearchByPhrase;

  @override
  String get phrase;
  @override
  @JsonKey(ignore: true)
  _$$_SearchByPhraseCopyWith<_$_SearchByPhrase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuickSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventSnapshot> eventsList) loaded,
    required TResult Function() loadedEmpty,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventSnapshot> eventsList)? loaded,
    TResult? Function()? loadedEmpty,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventSnapshot> eventsList)? loaded,
    TResult Function()? loadedEmpty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuickSearchInitial value) initial,
    required TResult Function(_QuickSearchLoading value) loading,
    required TResult Function(_QuickSearchLoaded value) loaded,
    required TResult Function(_QuickSearchEmpty value) loadedEmpty,
    required TResult Function(_QuickSearchError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuickSearchInitial value)? initial,
    TResult? Function(_QuickSearchLoading value)? loading,
    TResult? Function(_QuickSearchLoaded value)? loaded,
    TResult? Function(_QuickSearchEmpty value)? loadedEmpty,
    TResult? Function(_QuickSearchError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuickSearchInitial value)? initial,
    TResult Function(_QuickSearchLoading value)? loading,
    TResult Function(_QuickSearchLoaded value)? loaded,
    TResult Function(_QuickSearchEmpty value)? loadedEmpty,
    TResult Function(_QuickSearchError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickSearchStateCopyWith<$Res> {
  factory $QuickSearchStateCopyWith(
          QuickSearchState value, $Res Function(QuickSearchState) then) =
      _$QuickSearchStateCopyWithImpl<$Res, QuickSearchState>;
}

/// @nodoc
class _$QuickSearchStateCopyWithImpl<$Res, $Val extends QuickSearchState>
    implements $QuickSearchStateCopyWith<$Res> {
  _$QuickSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_QuickSearchInitialCopyWith<$Res> {
  factory _$$_QuickSearchInitialCopyWith(_$_QuickSearchInitial value,
          $Res Function(_$_QuickSearchInitial) then) =
      __$$_QuickSearchInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_QuickSearchInitialCopyWithImpl<$Res>
    extends _$QuickSearchStateCopyWithImpl<$Res, _$_QuickSearchInitial>
    implements _$$_QuickSearchInitialCopyWith<$Res> {
  __$$_QuickSearchInitialCopyWithImpl(
      _$_QuickSearchInitial _value, $Res Function(_$_QuickSearchInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_QuickSearchInitial implements _QuickSearchInitial {
  const _$_QuickSearchInitial();

  @override
  String toString() {
    return 'QuickSearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_QuickSearchInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventSnapshot> eventsList) loaded,
    required TResult Function() loadedEmpty,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventSnapshot> eventsList)? loaded,
    TResult? Function()? loadedEmpty,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventSnapshot> eventsList)? loaded,
    TResult Function()? loadedEmpty,
    TResult Function(String message)? error,
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
    required TResult Function(_QuickSearchInitial value) initial,
    required TResult Function(_QuickSearchLoading value) loading,
    required TResult Function(_QuickSearchLoaded value) loaded,
    required TResult Function(_QuickSearchEmpty value) loadedEmpty,
    required TResult Function(_QuickSearchError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuickSearchInitial value)? initial,
    TResult? Function(_QuickSearchLoading value)? loading,
    TResult? Function(_QuickSearchLoaded value)? loaded,
    TResult? Function(_QuickSearchEmpty value)? loadedEmpty,
    TResult? Function(_QuickSearchError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuickSearchInitial value)? initial,
    TResult Function(_QuickSearchLoading value)? loading,
    TResult Function(_QuickSearchLoaded value)? loaded,
    TResult Function(_QuickSearchEmpty value)? loadedEmpty,
    TResult Function(_QuickSearchError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _QuickSearchInitial implements QuickSearchState {
  const factory _QuickSearchInitial() = _$_QuickSearchInitial;
}

/// @nodoc
abstract class _$$_QuickSearchLoadingCopyWith<$Res> {
  factory _$$_QuickSearchLoadingCopyWith(_$_QuickSearchLoading value,
          $Res Function(_$_QuickSearchLoading) then) =
      __$$_QuickSearchLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_QuickSearchLoadingCopyWithImpl<$Res>
    extends _$QuickSearchStateCopyWithImpl<$Res, _$_QuickSearchLoading>
    implements _$$_QuickSearchLoadingCopyWith<$Res> {
  __$$_QuickSearchLoadingCopyWithImpl(
      _$_QuickSearchLoading _value, $Res Function(_$_QuickSearchLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_QuickSearchLoading implements _QuickSearchLoading {
  const _$_QuickSearchLoading();

  @override
  String toString() {
    return 'QuickSearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_QuickSearchLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventSnapshot> eventsList) loaded,
    required TResult Function() loadedEmpty,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventSnapshot> eventsList)? loaded,
    TResult? Function()? loadedEmpty,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventSnapshot> eventsList)? loaded,
    TResult Function()? loadedEmpty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuickSearchInitial value) initial,
    required TResult Function(_QuickSearchLoading value) loading,
    required TResult Function(_QuickSearchLoaded value) loaded,
    required TResult Function(_QuickSearchEmpty value) loadedEmpty,
    required TResult Function(_QuickSearchError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuickSearchInitial value)? initial,
    TResult? Function(_QuickSearchLoading value)? loading,
    TResult? Function(_QuickSearchLoaded value)? loaded,
    TResult? Function(_QuickSearchEmpty value)? loadedEmpty,
    TResult? Function(_QuickSearchError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuickSearchInitial value)? initial,
    TResult Function(_QuickSearchLoading value)? loading,
    TResult Function(_QuickSearchLoaded value)? loaded,
    TResult Function(_QuickSearchEmpty value)? loadedEmpty,
    TResult Function(_QuickSearchError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _QuickSearchLoading implements QuickSearchState {
  const factory _QuickSearchLoading() = _$_QuickSearchLoading;
}

/// @nodoc
abstract class _$$_QuickSearchLoadedCopyWith<$Res> {
  factory _$$_QuickSearchLoadedCopyWith(_$_QuickSearchLoaded value,
          $Res Function(_$_QuickSearchLoaded) then) =
      __$$_QuickSearchLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EventSnapshot> eventsList});
}

/// @nodoc
class __$$_QuickSearchLoadedCopyWithImpl<$Res>
    extends _$QuickSearchStateCopyWithImpl<$Res, _$_QuickSearchLoaded>
    implements _$$_QuickSearchLoadedCopyWith<$Res> {
  __$$_QuickSearchLoadedCopyWithImpl(
      _$_QuickSearchLoaded _value, $Res Function(_$_QuickSearchLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventsList = null,
  }) {
    return _then(_$_QuickSearchLoaded(
      null == eventsList
          ? _value._eventsList
          : eventsList // ignore: cast_nullable_to_non_nullable
              as List<EventSnapshot>,
    ));
  }
}

/// @nodoc

class _$_QuickSearchLoaded implements _QuickSearchLoaded {
  const _$_QuickSearchLoaded(final List<EventSnapshot> eventsList)
      : _eventsList = eventsList;

  final List<EventSnapshot> _eventsList;
  @override
  List<EventSnapshot> get eventsList {
    if (_eventsList is EqualUnmodifiableListView) return _eventsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventsList);
  }

  @override
  String toString() {
    return 'QuickSearchState.loaded(eventsList: $eventsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuickSearchLoaded &&
            const DeepCollectionEquality()
                .equals(other._eventsList, _eventsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_eventsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuickSearchLoadedCopyWith<_$_QuickSearchLoaded> get copyWith =>
      __$$_QuickSearchLoadedCopyWithImpl<_$_QuickSearchLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventSnapshot> eventsList) loaded,
    required TResult Function() loadedEmpty,
    required TResult Function(String message) error,
  }) {
    return loaded(eventsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventSnapshot> eventsList)? loaded,
    TResult? Function()? loadedEmpty,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(eventsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventSnapshot> eventsList)? loaded,
    TResult Function()? loadedEmpty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(eventsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuickSearchInitial value) initial,
    required TResult Function(_QuickSearchLoading value) loading,
    required TResult Function(_QuickSearchLoaded value) loaded,
    required TResult Function(_QuickSearchEmpty value) loadedEmpty,
    required TResult Function(_QuickSearchError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuickSearchInitial value)? initial,
    TResult? Function(_QuickSearchLoading value)? loading,
    TResult? Function(_QuickSearchLoaded value)? loaded,
    TResult? Function(_QuickSearchEmpty value)? loadedEmpty,
    TResult? Function(_QuickSearchError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuickSearchInitial value)? initial,
    TResult Function(_QuickSearchLoading value)? loading,
    TResult Function(_QuickSearchLoaded value)? loaded,
    TResult Function(_QuickSearchEmpty value)? loadedEmpty,
    TResult Function(_QuickSearchError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _QuickSearchLoaded implements QuickSearchState {
  const factory _QuickSearchLoaded(final List<EventSnapshot> eventsList) =
      _$_QuickSearchLoaded;

  List<EventSnapshot> get eventsList;
  @JsonKey(ignore: true)
  _$$_QuickSearchLoadedCopyWith<_$_QuickSearchLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuickSearchEmptyCopyWith<$Res> {
  factory _$$_QuickSearchEmptyCopyWith(
          _$_QuickSearchEmpty value, $Res Function(_$_QuickSearchEmpty) then) =
      __$$_QuickSearchEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_QuickSearchEmptyCopyWithImpl<$Res>
    extends _$QuickSearchStateCopyWithImpl<$Res, _$_QuickSearchEmpty>
    implements _$$_QuickSearchEmptyCopyWith<$Res> {
  __$$_QuickSearchEmptyCopyWithImpl(
      _$_QuickSearchEmpty _value, $Res Function(_$_QuickSearchEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_QuickSearchEmpty implements _QuickSearchEmpty {
  const _$_QuickSearchEmpty();

  @override
  String toString() {
    return 'QuickSearchState.loadedEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_QuickSearchEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventSnapshot> eventsList) loaded,
    required TResult Function() loadedEmpty,
    required TResult Function(String message) error,
  }) {
    return loadedEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventSnapshot> eventsList)? loaded,
    TResult? Function()? loadedEmpty,
    TResult? Function(String message)? error,
  }) {
    return loadedEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventSnapshot> eventsList)? loaded,
    TResult Function()? loadedEmpty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedEmpty != null) {
      return loadedEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuickSearchInitial value) initial,
    required TResult Function(_QuickSearchLoading value) loading,
    required TResult Function(_QuickSearchLoaded value) loaded,
    required TResult Function(_QuickSearchEmpty value) loadedEmpty,
    required TResult Function(_QuickSearchError value) error,
  }) {
    return loadedEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuickSearchInitial value)? initial,
    TResult? Function(_QuickSearchLoading value)? loading,
    TResult? Function(_QuickSearchLoaded value)? loaded,
    TResult? Function(_QuickSearchEmpty value)? loadedEmpty,
    TResult? Function(_QuickSearchError value)? error,
  }) {
    return loadedEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuickSearchInitial value)? initial,
    TResult Function(_QuickSearchLoading value)? loading,
    TResult Function(_QuickSearchLoaded value)? loaded,
    TResult Function(_QuickSearchEmpty value)? loadedEmpty,
    TResult Function(_QuickSearchError value)? error,
    required TResult orElse(),
  }) {
    if (loadedEmpty != null) {
      return loadedEmpty(this);
    }
    return orElse();
  }
}

abstract class _QuickSearchEmpty implements QuickSearchState {
  const factory _QuickSearchEmpty() = _$_QuickSearchEmpty;
}

/// @nodoc
abstract class _$$_QuickSearchErrorCopyWith<$Res> {
  factory _$$_QuickSearchErrorCopyWith(
          _$_QuickSearchError value, $Res Function(_$_QuickSearchError) then) =
      __$$_QuickSearchErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_QuickSearchErrorCopyWithImpl<$Res>
    extends _$QuickSearchStateCopyWithImpl<$Res, _$_QuickSearchError>
    implements _$$_QuickSearchErrorCopyWith<$Res> {
  __$$_QuickSearchErrorCopyWithImpl(
      _$_QuickSearchError _value, $Res Function(_$_QuickSearchError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_QuickSearchError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuickSearchError implements _QuickSearchError {
  const _$_QuickSearchError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'QuickSearchState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuickSearchError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuickSearchErrorCopyWith<_$_QuickSearchError> get copyWith =>
      __$$_QuickSearchErrorCopyWithImpl<_$_QuickSearchError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventSnapshot> eventsList) loaded,
    required TResult Function() loadedEmpty,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventSnapshot> eventsList)? loaded,
    TResult? Function()? loadedEmpty,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventSnapshot> eventsList)? loaded,
    TResult Function()? loadedEmpty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuickSearchInitial value) initial,
    required TResult Function(_QuickSearchLoading value) loading,
    required TResult Function(_QuickSearchLoaded value) loaded,
    required TResult Function(_QuickSearchEmpty value) loadedEmpty,
    required TResult Function(_QuickSearchError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuickSearchInitial value)? initial,
    TResult? Function(_QuickSearchLoading value)? loading,
    TResult? Function(_QuickSearchLoaded value)? loaded,
    TResult? Function(_QuickSearchEmpty value)? loadedEmpty,
    TResult? Function(_QuickSearchError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuickSearchInitial value)? initial,
    TResult Function(_QuickSearchLoading value)? loading,
    TResult Function(_QuickSearchLoaded value)? loaded,
    TResult Function(_QuickSearchEmpty value)? loadedEmpty,
    TResult Function(_QuickSearchError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _QuickSearchError implements QuickSearchState {
  const factory _QuickSearchError(final String message) = _$_QuickSearchError;

  String get message;
  @JsonKey(ignore: true)
  _$$_QuickSearchErrorCopyWith<_$_QuickSearchError> get copyWith =>
      throw _privateConstructorUsedError;
}
