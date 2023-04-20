// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_by_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventsByCategoryEvent {
  EventCategory get category => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventCategory category) searchByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventCategory category)? searchByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventCategory category)? searchByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchByCategory value) searchByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchByCategory value)? searchByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchByCategory value)? searchByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsByCategoryEventCopyWith<EventsByCategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsByCategoryEventCopyWith<$Res> {
  factory $EventsByCategoryEventCopyWith(EventsByCategoryEvent value,
          $Res Function(EventsByCategoryEvent) then) =
      _$EventsByCategoryEventCopyWithImpl<$Res, EventsByCategoryEvent>;
  @useResult
  $Res call({EventCategory category});
}

/// @nodoc
class _$EventsByCategoryEventCopyWithImpl<$Res,
        $Val extends EventsByCategoryEvent>
    implements $EventsByCategoryEventCopyWith<$Res> {
  _$EventsByCategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as EventCategory,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchByCategoryCopyWith<$Res>
    implements $EventsByCategoryEventCopyWith<$Res> {
  factory _$$_SearchByCategoryCopyWith(
          _$_SearchByCategory value, $Res Function(_$_SearchByCategory) then) =
      __$$_SearchByCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EventCategory category});
}

/// @nodoc
class __$$_SearchByCategoryCopyWithImpl<$Res>
    extends _$EventsByCategoryEventCopyWithImpl<$Res, _$_SearchByCategory>
    implements _$$_SearchByCategoryCopyWith<$Res> {
  __$$_SearchByCategoryCopyWithImpl(
      _$_SearchByCategory _value, $Res Function(_$_SearchByCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_SearchByCategory(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as EventCategory,
    ));
  }
}

/// @nodoc

class _$_SearchByCategory implements _SearchByCategory {
  const _$_SearchByCategory(this.category);

  @override
  final EventCategory category;

  @override
  String toString() {
    return 'EventsByCategoryEvent.searchByCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchByCategory &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchByCategoryCopyWith<_$_SearchByCategory> get copyWith =>
      __$$_SearchByCategoryCopyWithImpl<_$_SearchByCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventCategory category) searchByCategory,
  }) {
    return searchByCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventCategory category)? searchByCategory,
  }) {
    return searchByCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventCategory category)? searchByCategory,
    required TResult orElse(),
  }) {
    if (searchByCategory != null) {
      return searchByCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchByCategory value) searchByCategory,
  }) {
    return searchByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchByCategory value)? searchByCategory,
  }) {
    return searchByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchByCategory value)? searchByCategory,
    required TResult orElse(),
  }) {
    if (searchByCategory != null) {
      return searchByCategory(this);
    }
    return orElse();
  }
}

abstract class _SearchByCategory implements EventsByCategoryEvent {
  const factory _SearchByCategory(final EventCategory category) =
      _$_SearchByCategory;

  @override
  EventCategory get category;
  @override
  @JsonKey(ignore: true)
  _$$_SearchByCategoryCopyWith<_$_SearchByCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventsByCategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> eventsList) loaded,
    required TResult Function() loadedEmpty,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> eventsList)? loaded,
    TResult? Function()? loadedEmpty,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> eventsList)? loaded,
    TResult Function()? loadedEmpty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsByCategoryInitial value) initial,
    required TResult Function(_EventsByCategoryLoading value) loading,
    required TResult Function(_EventsByCategoryLoaded value) loaded,
    required TResult Function(_EventsByCategoryEmpty value) loadedEmpty,
    required TResult Function(_EventsByCategoryError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsByCategoryInitial value)? initial,
    TResult? Function(_EventsByCategoryLoading value)? loading,
    TResult? Function(_EventsByCategoryLoaded value)? loaded,
    TResult? Function(_EventsByCategoryEmpty value)? loadedEmpty,
    TResult? Function(_EventsByCategoryError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsByCategoryInitial value)? initial,
    TResult Function(_EventsByCategoryLoading value)? loading,
    TResult Function(_EventsByCategoryLoaded value)? loaded,
    TResult Function(_EventsByCategoryEmpty value)? loadedEmpty,
    TResult Function(_EventsByCategoryError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsByCategoryStateCopyWith<$Res> {
  factory $EventsByCategoryStateCopyWith(EventsByCategoryState value,
          $Res Function(EventsByCategoryState) then) =
      _$EventsByCategoryStateCopyWithImpl<$Res, EventsByCategoryState>;
}

/// @nodoc
class _$EventsByCategoryStateCopyWithImpl<$Res,
        $Val extends EventsByCategoryState>
    implements $EventsByCategoryStateCopyWith<$Res> {
  _$EventsByCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EventsByCategoryInitialCopyWith<$Res> {
  factory _$$_EventsByCategoryInitialCopyWith(_$_EventsByCategoryInitial value,
          $Res Function(_$_EventsByCategoryInitial) then) =
      __$$_EventsByCategoryInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventsByCategoryInitialCopyWithImpl<$Res>
    extends _$EventsByCategoryStateCopyWithImpl<$Res,
        _$_EventsByCategoryInitial>
    implements _$$_EventsByCategoryInitialCopyWith<$Res> {
  __$$_EventsByCategoryInitialCopyWithImpl(_$_EventsByCategoryInitial _value,
      $Res Function(_$_EventsByCategoryInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventsByCategoryInitial implements _EventsByCategoryInitial {
  const _$_EventsByCategoryInitial();

  @override
  String toString() {
    return 'EventsByCategoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsByCategoryInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> eventsList) loaded,
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
    TResult? Function(List<Event> eventsList)? loaded,
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
    TResult Function(List<Event> eventsList)? loaded,
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
    required TResult Function(_EventsByCategoryInitial value) initial,
    required TResult Function(_EventsByCategoryLoading value) loading,
    required TResult Function(_EventsByCategoryLoaded value) loaded,
    required TResult Function(_EventsByCategoryEmpty value) loadedEmpty,
    required TResult Function(_EventsByCategoryError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsByCategoryInitial value)? initial,
    TResult? Function(_EventsByCategoryLoading value)? loading,
    TResult? Function(_EventsByCategoryLoaded value)? loaded,
    TResult? Function(_EventsByCategoryEmpty value)? loadedEmpty,
    TResult? Function(_EventsByCategoryError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsByCategoryInitial value)? initial,
    TResult Function(_EventsByCategoryLoading value)? loading,
    TResult Function(_EventsByCategoryLoaded value)? loaded,
    TResult Function(_EventsByCategoryEmpty value)? loadedEmpty,
    TResult Function(_EventsByCategoryError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _EventsByCategoryInitial implements EventsByCategoryState {
  const factory _EventsByCategoryInitial() = _$_EventsByCategoryInitial;
}

/// @nodoc
abstract class _$$_EventsByCategoryLoadingCopyWith<$Res> {
  factory _$$_EventsByCategoryLoadingCopyWith(_$_EventsByCategoryLoading value,
          $Res Function(_$_EventsByCategoryLoading) then) =
      __$$_EventsByCategoryLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventsByCategoryLoadingCopyWithImpl<$Res>
    extends _$EventsByCategoryStateCopyWithImpl<$Res,
        _$_EventsByCategoryLoading>
    implements _$$_EventsByCategoryLoadingCopyWith<$Res> {
  __$$_EventsByCategoryLoadingCopyWithImpl(_$_EventsByCategoryLoading _value,
      $Res Function(_$_EventsByCategoryLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventsByCategoryLoading implements _EventsByCategoryLoading {
  const _$_EventsByCategoryLoading();

  @override
  String toString() {
    return 'EventsByCategoryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsByCategoryLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> eventsList) loaded,
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
    TResult? Function(List<Event> eventsList)? loaded,
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
    TResult Function(List<Event> eventsList)? loaded,
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
    required TResult Function(_EventsByCategoryInitial value) initial,
    required TResult Function(_EventsByCategoryLoading value) loading,
    required TResult Function(_EventsByCategoryLoaded value) loaded,
    required TResult Function(_EventsByCategoryEmpty value) loadedEmpty,
    required TResult Function(_EventsByCategoryError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsByCategoryInitial value)? initial,
    TResult? Function(_EventsByCategoryLoading value)? loading,
    TResult? Function(_EventsByCategoryLoaded value)? loaded,
    TResult? Function(_EventsByCategoryEmpty value)? loadedEmpty,
    TResult? Function(_EventsByCategoryError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsByCategoryInitial value)? initial,
    TResult Function(_EventsByCategoryLoading value)? loading,
    TResult Function(_EventsByCategoryLoaded value)? loaded,
    TResult Function(_EventsByCategoryEmpty value)? loadedEmpty,
    TResult Function(_EventsByCategoryError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _EventsByCategoryLoading implements EventsByCategoryState {
  const factory _EventsByCategoryLoading() = _$_EventsByCategoryLoading;
}

/// @nodoc
abstract class _$$_EventsByCategoryLoadedCopyWith<$Res> {
  factory _$$_EventsByCategoryLoadedCopyWith(_$_EventsByCategoryLoaded value,
          $Res Function(_$_EventsByCategoryLoaded) then) =
      __$$_EventsByCategoryLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Event> eventsList});
}

/// @nodoc
class __$$_EventsByCategoryLoadedCopyWithImpl<$Res>
    extends _$EventsByCategoryStateCopyWithImpl<$Res, _$_EventsByCategoryLoaded>
    implements _$$_EventsByCategoryLoadedCopyWith<$Res> {
  __$$_EventsByCategoryLoadedCopyWithImpl(_$_EventsByCategoryLoaded _value,
      $Res Function(_$_EventsByCategoryLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventsList = null,
  }) {
    return _then(_$_EventsByCategoryLoaded(
      null == eventsList
          ? _value._eventsList
          : eventsList // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$_EventsByCategoryLoaded implements _EventsByCategoryLoaded {
  const _$_EventsByCategoryLoaded(final List<Event> eventsList)
      : _eventsList = eventsList;

  final List<Event> _eventsList;
  @override
  List<Event> get eventsList {
    if (_eventsList is EqualUnmodifiableListView) return _eventsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventsList);
  }

  @override
  String toString() {
    return 'EventsByCategoryState.loaded(eventsList: $eventsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsByCategoryLoaded &&
            const DeepCollectionEquality()
                .equals(other._eventsList, _eventsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_eventsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsByCategoryLoadedCopyWith<_$_EventsByCategoryLoaded> get copyWith =>
      __$$_EventsByCategoryLoadedCopyWithImpl<_$_EventsByCategoryLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> eventsList) loaded,
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
    TResult? Function(List<Event> eventsList)? loaded,
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
    TResult Function(List<Event> eventsList)? loaded,
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
    required TResult Function(_EventsByCategoryInitial value) initial,
    required TResult Function(_EventsByCategoryLoading value) loading,
    required TResult Function(_EventsByCategoryLoaded value) loaded,
    required TResult Function(_EventsByCategoryEmpty value) loadedEmpty,
    required TResult Function(_EventsByCategoryError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsByCategoryInitial value)? initial,
    TResult? Function(_EventsByCategoryLoading value)? loading,
    TResult? Function(_EventsByCategoryLoaded value)? loaded,
    TResult? Function(_EventsByCategoryEmpty value)? loadedEmpty,
    TResult? Function(_EventsByCategoryError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsByCategoryInitial value)? initial,
    TResult Function(_EventsByCategoryLoading value)? loading,
    TResult Function(_EventsByCategoryLoaded value)? loaded,
    TResult Function(_EventsByCategoryEmpty value)? loadedEmpty,
    TResult Function(_EventsByCategoryError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _EventsByCategoryLoaded implements EventsByCategoryState {
  const factory _EventsByCategoryLoaded(final List<Event> eventsList) =
      _$_EventsByCategoryLoaded;

  List<Event> get eventsList;
  @JsonKey(ignore: true)
  _$$_EventsByCategoryLoadedCopyWith<_$_EventsByCategoryLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventsByCategoryEmptyCopyWith<$Res> {
  factory _$$_EventsByCategoryEmptyCopyWith(_$_EventsByCategoryEmpty value,
          $Res Function(_$_EventsByCategoryEmpty) then) =
      __$$_EventsByCategoryEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventsByCategoryEmptyCopyWithImpl<$Res>
    extends _$EventsByCategoryStateCopyWithImpl<$Res, _$_EventsByCategoryEmpty>
    implements _$$_EventsByCategoryEmptyCopyWith<$Res> {
  __$$_EventsByCategoryEmptyCopyWithImpl(_$_EventsByCategoryEmpty _value,
      $Res Function(_$_EventsByCategoryEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventsByCategoryEmpty implements _EventsByCategoryEmpty {
  const _$_EventsByCategoryEmpty();

  @override
  String toString() {
    return 'EventsByCategoryState.loadedEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventsByCategoryEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> eventsList) loaded,
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
    TResult? Function(List<Event> eventsList)? loaded,
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
    TResult Function(List<Event> eventsList)? loaded,
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
    required TResult Function(_EventsByCategoryInitial value) initial,
    required TResult Function(_EventsByCategoryLoading value) loading,
    required TResult Function(_EventsByCategoryLoaded value) loaded,
    required TResult Function(_EventsByCategoryEmpty value) loadedEmpty,
    required TResult Function(_EventsByCategoryError value) error,
  }) {
    return loadedEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsByCategoryInitial value)? initial,
    TResult? Function(_EventsByCategoryLoading value)? loading,
    TResult? Function(_EventsByCategoryLoaded value)? loaded,
    TResult? Function(_EventsByCategoryEmpty value)? loadedEmpty,
    TResult? Function(_EventsByCategoryError value)? error,
  }) {
    return loadedEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsByCategoryInitial value)? initial,
    TResult Function(_EventsByCategoryLoading value)? loading,
    TResult Function(_EventsByCategoryLoaded value)? loaded,
    TResult Function(_EventsByCategoryEmpty value)? loadedEmpty,
    TResult Function(_EventsByCategoryError value)? error,
    required TResult orElse(),
  }) {
    if (loadedEmpty != null) {
      return loadedEmpty(this);
    }
    return orElse();
  }
}

abstract class _EventsByCategoryEmpty implements EventsByCategoryState {
  const factory _EventsByCategoryEmpty() = _$_EventsByCategoryEmpty;
}

/// @nodoc
abstract class _$$_EventsByCategoryErrorCopyWith<$Res> {
  factory _$$_EventsByCategoryErrorCopyWith(_$_EventsByCategoryError value,
          $Res Function(_$_EventsByCategoryError) then) =
      __$$_EventsByCategoryErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_EventsByCategoryErrorCopyWithImpl<$Res>
    extends _$EventsByCategoryStateCopyWithImpl<$Res, _$_EventsByCategoryError>
    implements _$$_EventsByCategoryErrorCopyWith<$Res> {
  __$$_EventsByCategoryErrorCopyWithImpl(_$_EventsByCategoryError _value,
      $Res Function(_$_EventsByCategoryError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_EventsByCategoryError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventsByCategoryError implements _EventsByCategoryError {
  const _$_EventsByCategoryError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EventsByCategoryState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsByCategoryError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsByCategoryErrorCopyWith<_$_EventsByCategoryError> get copyWith =>
      __$$_EventsByCategoryErrorCopyWithImpl<_$_EventsByCategoryError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> eventsList) loaded,
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
    TResult? Function(List<Event> eventsList)? loaded,
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
    TResult Function(List<Event> eventsList)? loaded,
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
    required TResult Function(_EventsByCategoryInitial value) initial,
    required TResult Function(_EventsByCategoryLoading value) loading,
    required TResult Function(_EventsByCategoryLoaded value) loaded,
    required TResult Function(_EventsByCategoryEmpty value) loadedEmpty,
    required TResult Function(_EventsByCategoryError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsByCategoryInitial value)? initial,
    TResult? Function(_EventsByCategoryLoading value)? loading,
    TResult? Function(_EventsByCategoryLoaded value)? loaded,
    TResult? Function(_EventsByCategoryEmpty value)? loadedEmpty,
    TResult? Function(_EventsByCategoryError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsByCategoryInitial value)? initial,
    TResult Function(_EventsByCategoryLoading value)? loading,
    TResult Function(_EventsByCategoryLoaded value)? loaded,
    TResult Function(_EventsByCategoryEmpty value)? loadedEmpty,
    TResult Function(_EventsByCategoryError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _EventsByCategoryError implements EventsByCategoryState {
  const factory _EventsByCategoryError(final String message) =
      _$_EventsByCategoryError;

  String get message;
  @JsonKey(ignore: true)
  _$$_EventsByCategoryErrorCopyWith<_$_EventsByCategoryError> get copyWith =>
      throw _privateConstructorUsedError;
}
