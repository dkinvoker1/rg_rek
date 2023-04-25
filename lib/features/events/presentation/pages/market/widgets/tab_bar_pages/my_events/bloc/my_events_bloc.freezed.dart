// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyEventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(EventCategory category) expandCategory,
    required TResult Function(EventCategory? category) filterByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(EventCategory category)? expandCategory,
    TResult? Function(EventCategory? category)? filterByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(EventCategory category)? expandCategory,
    TResult Function(EventCategory? category)? filterByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_ExpandCategory value) expandCategory,
    required TResult Function(_FilterByCategory value) filterByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_ExpandCategory value)? expandCategory,
    TResult? Function(_FilterByCategory value)? filterByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ExpandCategory value)? expandCategory,
    TResult Function(_FilterByCategory value)? filterByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyEventsEventCopyWith<$Res> {
  factory $MyEventsEventCopyWith(
          MyEventsEvent value, $Res Function(MyEventsEvent) then) =
      _$MyEventsEventCopyWithImpl<$Res, MyEventsEvent>;
}

/// @nodoc
class _$MyEventsEventCopyWithImpl<$Res, $Val extends MyEventsEvent>
    implements $MyEventsEventCopyWith<$Res> {
  _$MyEventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadCopyWith<$Res> {
  factory _$$_LoadCopyWith(_$_Load value, $Res Function(_$_Load) then) =
      __$$_LoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res>
    extends _$MyEventsEventCopyWithImpl<$Res, _$_Load>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'MyEventsEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(EventCategory category) expandCategory,
    required TResult Function(EventCategory? category) filterByCategory,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(EventCategory category)? expandCategory,
    TResult? Function(EventCategory? category)? filterByCategory,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(EventCategory category)? expandCategory,
    TResult Function(EventCategory? category)? filterByCategory,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_ExpandCategory value) expandCategory,
    required TResult Function(_FilterByCategory value) filterByCategory,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_ExpandCategory value)? expandCategory,
    TResult? Function(_FilterByCategory value)? filterByCategory,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ExpandCategory value)? expandCategory,
    TResult Function(_FilterByCategory value)? filterByCategory,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements MyEventsEvent {
  const factory _Load() = _$_Load;
}

/// @nodoc
abstract class _$$_ExpandCategoryCopyWith<$Res> {
  factory _$$_ExpandCategoryCopyWith(
          _$_ExpandCategory value, $Res Function(_$_ExpandCategory) then) =
      __$$_ExpandCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({EventCategory category});
}

/// @nodoc
class __$$_ExpandCategoryCopyWithImpl<$Res>
    extends _$MyEventsEventCopyWithImpl<$Res, _$_ExpandCategory>
    implements _$$_ExpandCategoryCopyWith<$Res> {
  __$$_ExpandCategoryCopyWithImpl(
      _$_ExpandCategory _value, $Res Function(_$_ExpandCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_ExpandCategory(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as EventCategory,
    ));
  }
}

/// @nodoc

class _$_ExpandCategory implements _ExpandCategory {
  const _$_ExpandCategory(this.category);

  @override
  final EventCategory category;

  @override
  String toString() {
    return 'MyEventsEvent.expandCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpandCategory &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpandCategoryCopyWith<_$_ExpandCategory> get copyWith =>
      __$$_ExpandCategoryCopyWithImpl<_$_ExpandCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(EventCategory category) expandCategory,
    required TResult Function(EventCategory? category) filterByCategory,
  }) {
    return expandCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(EventCategory category)? expandCategory,
    TResult? Function(EventCategory? category)? filterByCategory,
  }) {
    return expandCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(EventCategory category)? expandCategory,
    TResult Function(EventCategory? category)? filterByCategory,
    required TResult orElse(),
  }) {
    if (expandCategory != null) {
      return expandCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_ExpandCategory value) expandCategory,
    required TResult Function(_FilterByCategory value) filterByCategory,
  }) {
    return expandCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_ExpandCategory value)? expandCategory,
    TResult? Function(_FilterByCategory value)? filterByCategory,
  }) {
    return expandCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ExpandCategory value)? expandCategory,
    TResult Function(_FilterByCategory value)? filterByCategory,
    required TResult orElse(),
  }) {
    if (expandCategory != null) {
      return expandCategory(this);
    }
    return orElse();
  }
}

abstract class _ExpandCategory implements MyEventsEvent {
  const factory _ExpandCategory(final EventCategory category) =
      _$_ExpandCategory;

  EventCategory get category;
  @JsonKey(ignore: true)
  _$$_ExpandCategoryCopyWith<_$_ExpandCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilterByCategoryCopyWith<$Res> {
  factory _$$_FilterByCategoryCopyWith(
          _$_FilterByCategory value, $Res Function(_$_FilterByCategory) then) =
      __$$_FilterByCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({EventCategory? category});
}

/// @nodoc
class __$$_FilterByCategoryCopyWithImpl<$Res>
    extends _$MyEventsEventCopyWithImpl<$Res, _$_FilterByCategory>
    implements _$$_FilterByCategoryCopyWith<$Res> {
  __$$_FilterByCategoryCopyWithImpl(
      _$_FilterByCategory _value, $Res Function(_$_FilterByCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$_FilterByCategory(
      freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as EventCategory?,
    ));
  }
}

/// @nodoc

class _$_FilterByCategory implements _FilterByCategory {
  const _$_FilterByCategory(this.category);

  @override
  final EventCategory? category;

  @override
  String toString() {
    return 'MyEventsEvent.filterByCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterByCategory &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterByCategoryCopyWith<_$_FilterByCategory> get copyWith =>
      __$$_FilterByCategoryCopyWithImpl<_$_FilterByCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(EventCategory category) expandCategory,
    required TResult Function(EventCategory? category) filterByCategory,
  }) {
    return filterByCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(EventCategory category)? expandCategory,
    TResult? Function(EventCategory? category)? filterByCategory,
  }) {
    return filterByCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(EventCategory category)? expandCategory,
    TResult Function(EventCategory? category)? filterByCategory,
    required TResult orElse(),
  }) {
    if (filterByCategory != null) {
      return filterByCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_ExpandCategory value) expandCategory,
    required TResult Function(_FilterByCategory value) filterByCategory,
  }) {
    return filterByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_ExpandCategory value)? expandCategory,
    TResult? Function(_FilterByCategory value)? filterByCategory,
  }) {
    return filterByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ExpandCategory value)? expandCategory,
    TResult Function(_FilterByCategory value)? filterByCategory,
    required TResult orElse(),
  }) {
    if (filterByCategory != null) {
      return filterByCategory(this);
    }
    return orElse();
  }
}

abstract class _FilterByCategory implements MyEventsEvent {
  const factory _FilterByCategory(final EventCategory? category) =
      _$_FilterByCategory;

  EventCategory? get category;
  @JsonKey(ignore: true)
  _$$_FilterByCategoryCopyWith<_$_FilterByCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyEventsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)
        loaded,
    required TResult Function() loadedEmpty,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)?
        loaded,
    TResult? Function()? loadedEmpty,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)?
        loaded,
    TResult Function()? loadedEmpty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) loadedEmpty,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? loadedEmpty,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? loadedEmpty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyEventsStateCopyWith<$Res> {
  factory $MyEventsStateCopyWith(
          MyEventsState value, $Res Function(MyEventsState) then) =
      _$MyEventsStateCopyWithImpl<$Res, MyEventsState>;
}

/// @nodoc
class _$MyEventsStateCopyWithImpl<$Res, $Val extends MyEventsState>
    implements $MyEventsStateCopyWith<$Res> {
  _$MyEventsStateCopyWithImpl(this._value, this._then);

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
    extends _$MyEventsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MyEventsState.initial()';
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
    required TResult Function() loading,
    required TResult Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)
        loaded,
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
    TResult? Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)?
        loaded,
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
    TResult Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)?
        loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) loadedEmpty,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? loadedEmpty,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? loadedEmpty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MyEventsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$MyEventsStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MyEventsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)
        loaded,
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
    TResult? Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)?
        loaded,
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
    TResult Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)?
        loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) loadedEmpty,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? loadedEmpty,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? loadedEmpty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MyEventsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<EventsByCategory1> eventsByCategory,
      EventCategory? filterByCategory});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$MyEventsStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventsByCategory = null,
    Object? filterByCategory = freezed,
  }) {
    return _then(_$_Loaded(
      null == eventsByCategory
          ? _value._eventsByCategory
          : eventsByCategory // ignore: cast_nullable_to_non_nullable
              as List<EventsByCategory1>,
      freezed == filterByCategory
          ? _value.filterByCategory
          : filterByCategory // ignore: cast_nullable_to_non_nullable
              as EventCategory?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      final List<EventsByCategory1> eventsByCategory, this.filterByCategory)
      : _eventsByCategory = eventsByCategory;

  final List<EventsByCategory1> _eventsByCategory;
  @override
  List<EventsByCategory1> get eventsByCategory {
    if (_eventsByCategory is EqualUnmodifiableListView)
      return _eventsByCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventsByCategory);
  }

  @override
  final EventCategory? filterByCategory;

  @override
  String toString() {
    return 'MyEventsState.loaded(eventsByCategory: $eventsByCategory, filterByCategory: $filterByCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._eventsByCategory, _eventsByCategory) &&
            (identical(other.filterByCategory, filterByCategory) ||
                other.filterByCategory == filterByCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_eventsByCategory), filterByCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)
        loaded,
    required TResult Function() loadedEmpty,
    required TResult Function(String message) error,
  }) {
    return loaded(eventsByCategory, filterByCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)?
        loaded,
    TResult? Function()? loadedEmpty,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(eventsByCategory, filterByCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)?
        loaded,
    TResult Function()? loadedEmpty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(eventsByCategory, filterByCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) loadedEmpty,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? loadedEmpty,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? loadedEmpty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements MyEventsState {
  const factory _Loaded(final List<EventsByCategory1> eventsByCategory,
      final EventCategory? filterByCategory) = _$_Loaded;

  List<EventsByCategory1> get eventsByCategory;
  EventCategory? get filterByCategory;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res>
    extends _$MyEventsStateCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'MyEventsState.loadedEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)
        loaded,
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
    TResult? Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)?
        loaded,
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
    TResult Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)?
        loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) loadedEmpty,
    required TResult Function(_Error value) error,
  }) {
    return loadedEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? loadedEmpty,
    TResult? Function(_Error value)? error,
  }) {
    return loadedEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? loadedEmpty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedEmpty != null) {
      return loadedEmpty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements MyEventsState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$MyEventsStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Error(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MyEventsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)
        loaded,
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
    TResult? Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)?
        loaded,
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
    TResult Function(List<EventsByCategory1> eventsByCategory,
            EventCategory? filterByCategory)?
        loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) loadedEmpty,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? loadedEmpty,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? loadedEmpty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements MyEventsState {
  const factory _Error(final String message) = _$_Error;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventsByCategory1 {
  EventCategory get eventCategory => throw _privateConstructorUsedError;
  int get gamesCount => throw _privateConstructorUsedError;
  List<GamesByGameType> get gamesByType => throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsByCategory1CopyWith<EventsByCategory1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsByCategory1CopyWith<$Res> {
  factory $EventsByCategory1CopyWith(
          EventsByCategory1 value, $Res Function(EventsByCategory1) then) =
      _$EventsByCategory1CopyWithImpl<$Res, EventsByCategory1>;
  @useResult
  $Res call(
      {EventCategory eventCategory,
      int gamesCount,
      List<GamesByGameType> gamesByType,
      bool isExpanded});
}

/// @nodoc
class _$EventsByCategory1CopyWithImpl<$Res, $Val extends EventsByCategory1>
    implements $EventsByCategory1CopyWith<$Res> {
  _$EventsByCategory1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventCategory = null,
    Object? gamesCount = null,
    Object? gamesByType = null,
    Object? isExpanded = null,
  }) {
    return _then(_value.copyWith(
      eventCategory: null == eventCategory
          ? _value.eventCategory
          : eventCategory // ignore: cast_nullable_to_non_nullable
              as EventCategory,
      gamesCount: null == gamesCount
          ? _value.gamesCount
          : gamesCount // ignore: cast_nullable_to_non_nullable
              as int,
      gamesByType: null == gamesByType
          ? _value.gamesByType
          : gamesByType // ignore: cast_nullable_to_non_nullable
              as List<GamesByGameType>,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventsByCategory1CopyWith<$Res>
    implements $EventsByCategory1CopyWith<$Res> {
  factory _$$_EventsByCategory1CopyWith(_$_EventsByCategory1 value,
          $Res Function(_$_EventsByCategory1) then) =
      __$$_EventsByCategory1CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EventCategory eventCategory,
      int gamesCount,
      List<GamesByGameType> gamesByType,
      bool isExpanded});
}

/// @nodoc
class __$$_EventsByCategory1CopyWithImpl<$Res>
    extends _$EventsByCategory1CopyWithImpl<$Res, _$_EventsByCategory1>
    implements _$$_EventsByCategory1CopyWith<$Res> {
  __$$_EventsByCategory1CopyWithImpl(
      _$_EventsByCategory1 _value, $Res Function(_$_EventsByCategory1) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventCategory = null,
    Object? gamesCount = null,
    Object? gamesByType = null,
    Object? isExpanded = null,
  }) {
    return _then(_$_EventsByCategory1(
      eventCategory: null == eventCategory
          ? _value.eventCategory
          : eventCategory // ignore: cast_nullable_to_non_nullable
              as EventCategory,
      gamesCount: null == gamesCount
          ? _value.gamesCount
          : gamesCount // ignore: cast_nullable_to_non_nullable
              as int,
      gamesByType: null == gamesByType
          ? _value._gamesByType
          : gamesByType // ignore: cast_nullable_to_non_nullable
              as List<GamesByGameType>,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EventsByCategory1 extends _EventsByCategory1 {
  _$_EventsByCategory1(
      {required this.eventCategory,
      required this.gamesCount,
      required final List<GamesByGameType> gamesByType,
      required this.isExpanded})
      : _gamesByType = gamesByType,
        super._();

  @override
  final EventCategory eventCategory;
  @override
  final int gamesCount;
  final List<GamesByGameType> _gamesByType;
  @override
  List<GamesByGameType> get gamesByType {
    if (_gamesByType is EqualUnmodifiableListView) return _gamesByType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gamesByType);
  }

  @override
  final bool isExpanded;

  @override
  String toString() {
    return 'EventsByCategory1(eventCategory: $eventCategory, gamesCount: $gamesCount, gamesByType: $gamesByType, isExpanded: $isExpanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsByCategory1 &&
            (identical(other.eventCategory, eventCategory) ||
                other.eventCategory == eventCategory) &&
            (identical(other.gamesCount, gamesCount) ||
                other.gamesCount == gamesCount) &&
            const DeepCollectionEquality()
                .equals(other._gamesByType, _gamesByType) &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventCategory, gamesCount,
      const DeepCollectionEquality().hash(_gamesByType), isExpanded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsByCategory1CopyWith<_$_EventsByCategory1> get copyWith =>
      __$$_EventsByCategory1CopyWithImpl<_$_EventsByCategory1>(
          this, _$identity);
}

abstract class _EventsByCategory1 extends EventsByCategory1 {
  factory _EventsByCategory1(
      {required final EventCategory eventCategory,
      required final int gamesCount,
      required final List<GamesByGameType> gamesByType,
      required final bool isExpanded}) = _$_EventsByCategory1;
  _EventsByCategory1._() : super._();

  @override
  EventCategory get eventCategory;
  @override
  int get gamesCount;
  @override
  List<GamesByGameType> get gamesByType;
  @override
  bool get isExpanded;
  @override
  @JsonKey(ignore: true)
  _$$_EventsByCategory1CopyWith<_$_EventsByCategory1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GamesByGameType {
  String get gameName => throw _privateConstructorUsedError;
  List<GamesByCategory3> get gamesByCategory3 =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GamesByGameTypeCopyWith<GamesByGameType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesByGameTypeCopyWith<$Res> {
  factory $GamesByGameTypeCopyWith(
          GamesByGameType value, $Res Function(GamesByGameType) then) =
      _$GamesByGameTypeCopyWithImpl<$Res, GamesByGameType>;
  @useResult
  $Res call({String gameName, List<GamesByCategory3> gamesByCategory3});
}

/// @nodoc
class _$GamesByGameTypeCopyWithImpl<$Res, $Val extends GamesByGameType>
    implements $GamesByGameTypeCopyWith<$Res> {
  _$GamesByGameTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameName = null,
    Object? gamesByCategory3 = null,
  }) {
    return _then(_value.copyWith(
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      gamesByCategory3: null == gamesByCategory3
          ? _value.gamesByCategory3
          : gamesByCategory3 // ignore: cast_nullable_to_non_nullable
              as List<GamesByCategory3>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventsByGameTypeCopyWith<$Res>
    implements $GamesByGameTypeCopyWith<$Res> {
  factory _$$_EventsByGameTypeCopyWith(
          _$_EventsByGameType value, $Res Function(_$_EventsByGameType) then) =
      __$$_EventsByGameTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String gameName, List<GamesByCategory3> gamesByCategory3});
}

/// @nodoc
class __$$_EventsByGameTypeCopyWithImpl<$Res>
    extends _$GamesByGameTypeCopyWithImpl<$Res, _$_EventsByGameType>
    implements _$$_EventsByGameTypeCopyWith<$Res> {
  __$$_EventsByGameTypeCopyWithImpl(
      _$_EventsByGameType _value, $Res Function(_$_EventsByGameType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameName = null,
    Object? gamesByCategory3 = null,
  }) {
    return _then(_$_EventsByGameType(
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      gamesByCategory3: null == gamesByCategory3
          ? _value._gamesByCategory3
          : gamesByCategory3 // ignore: cast_nullable_to_non_nullable
              as List<GamesByCategory3>,
    ));
  }
}

/// @nodoc

class _$_EventsByGameType extends _EventsByGameType {
  _$_EventsByGameType(
      {required this.gameName,
      required final List<GamesByCategory3> gamesByCategory3})
      : _gamesByCategory3 = gamesByCategory3,
        super._();

  @override
  final String gameName;
  final List<GamesByCategory3> _gamesByCategory3;
  @override
  List<GamesByCategory3> get gamesByCategory3 {
    if (_gamesByCategory3 is EqualUnmodifiableListView)
      return _gamesByCategory3;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gamesByCategory3);
  }

  @override
  String toString() {
    return 'GamesByGameType(gameName: $gameName, gamesByCategory3: $gamesByCategory3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsByGameType &&
            (identical(other.gameName, gameName) ||
                other.gameName == gameName) &&
            const DeepCollectionEquality()
                .equals(other._gamesByCategory3, _gamesByCategory3));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameName,
      const DeepCollectionEquality().hash(_gamesByCategory3));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsByGameTypeCopyWith<_$_EventsByGameType> get copyWith =>
      __$$_EventsByGameTypeCopyWithImpl<_$_EventsByGameType>(this, _$identity);
}

abstract class _EventsByGameType extends GamesByGameType {
  factory _EventsByGameType(
          {required final String gameName,
          required final List<GamesByCategory3> gamesByCategory3}) =
      _$_EventsByGameType;
  _EventsByGameType._() : super._();

  @override
  String get gameName;
  @override
  List<GamesByCategory3> get gamesByCategory3;
  @override
  @JsonKey(ignore: true)
  _$$_EventsByGameTypeCopyWith<_$_EventsByGameType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GamesByCategory3 {
  String get category2Name => throw _privateConstructorUsedError;
  String get category3Name => throw _privateConstructorUsedError;
  List<GameCardData> get games => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GamesByCategory3CopyWith<GamesByCategory3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesByCategory3CopyWith<$Res> {
  factory $GamesByCategory3CopyWith(
          GamesByCategory3 value, $Res Function(GamesByCategory3) then) =
      _$GamesByCategory3CopyWithImpl<$Res, GamesByCategory3>;
  @useResult
  $Res call(
      {String category2Name, String category3Name, List<GameCardData> games});
}

/// @nodoc
class _$GamesByCategory3CopyWithImpl<$Res, $Val extends GamesByCategory3>
    implements $GamesByCategory3CopyWith<$Res> {
  _$GamesByCategory3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category2Name = null,
    Object? category3Name = null,
    Object? games = null,
  }) {
    return _then(_value.copyWith(
      category2Name: null == category2Name
          ? _value.category2Name
          : category2Name // ignore: cast_nullable_to_non_nullable
              as String,
      category3Name: null == category3Name
          ? _value.category3Name
          : category3Name // ignore: cast_nullable_to_non_nullable
              as String,
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<GameCardData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GamesByCategory3CopyWith<$Res>
    implements $GamesByCategory3CopyWith<$Res> {
  factory _$$_GamesByCategory3CopyWith(
          _$_GamesByCategory3 value, $Res Function(_$_GamesByCategory3) then) =
      __$$_GamesByCategory3CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String category2Name, String category3Name, List<GameCardData> games});
}

/// @nodoc
class __$$_GamesByCategory3CopyWithImpl<$Res>
    extends _$GamesByCategory3CopyWithImpl<$Res, _$_GamesByCategory3>
    implements _$$_GamesByCategory3CopyWith<$Res> {
  __$$_GamesByCategory3CopyWithImpl(
      _$_GamesByCategory3 _value, $Res Function(_$_GamesByCategory3) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category2Name = null,
    Object? category3Name = null,
    Object? games = null,
  }) {
    return _then(_$_GamesByCategory3(
      category2Name: null == category2Name
          ? _value.category2Name
          : category2Name // ignore: cast_nullable_to_non_nullable
              as String,
      category3Name: null == category3Name
          ? _value.category3Name
          : category3Name // ignore: cast_nullable_to_non_nullable
              as String,
      games: null == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<GameCardData>,
    ));
  }
}

/// @nodoc

class _$_GamesByCategory3 extends _GamesByCategory3 {
  _$_GamesByCategory3(
      {required this.category2Name,
      required this.category3Name,
      required final List<GameCardData> games})
      : _games = games,
        super._();

  @override
  final String category2Name;
  @override
  final String category3Name;
  final List<GameCardData> _games;
  @override
  List<GameCardData> get games {
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_games);
  }

  @override
  String toString() {
    return 'GamesByCategory3(category2Name: $category2Name, category3Name: $category3Name, games: $games)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GamesByCategory3 &&
            (identical(other.category2Name, category2Name) ||
                other.category2Name == category2Name) &&
            (identical(other.category3Name, category3Name) ||
                other.category3Name == category3Name) &&
            const DeepCollectionEquality().equals(other._games, _games));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category2Name, category3Name,
      const DeepCollectionEquality().hash(_games));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GamesByCategory3CopyWith<_$_GamesByCategory3> get copyWith =>
      __$$_GamesByCategory3CopyWithImpl<_$_GamesByCategory3>(this, _$identity);
}

abstract class _GamesByCategory3 extends GamesByCategory3 {
  factory _GamesByCategory3(
      {required final String category2Name,
      required final String category3Name,
      required final List<GameCardData> games}) = _$_GamesByCategory3;
  _GamesByCategory3._() : super._();

  @override
  String get category2Name;
  @override
  String get category3Name;
  @override
  List<GameCardData> get games;
  @override
  @JsonKey(ignore: true)
  _$$_GamesByCategory3CopyWith<_$_GamesByCategory3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameCardData {
  int get category1Id => throw _privateConstructorUsedError;
  String get category1Name => throw _privateConstructorUsedError;
  int get gameType => throw _privateConstructorUsedError;
  String get gameName => throw _privateConstructorUsedError;
  String get category2Name => throw _privateConstructorUsedError;
  int get category3Id => throw _privateConstructorUsedError;
  String get category3Name => throw _privateConstructorUsedError;
  DateTime get eventStart => throw _privateConstructorUsedError;
  List<SelectableOutcome> get outcomes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameCardDataCopyWith<GameCardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCardDataCopyWith<$Res> {
  factory $GameCardDataCopyWith(
          GameCardData value, $Res Function(GameCardData) then) =
      _$GameCardDataCopyWithImpl<$Res, GameCardData>;
  @useResult
  $Res call(
      {int category1Id,
      String category1Name,
      int gameType,
      String gameName,
      String category2Name,
      int category3Id,
      String category3Name,
      DateTime eventStart,
      List<SelectableOutcome> outcomes});
}

/// @nodoc
class _$GameCardDataCopyWithImpl<$Res, $Val extends GameCardData>
    implements $GameCardDataCopyWith<$Res> {
  _$GameCardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category1Id = null,
    Object? category1Name = null,
    Object? gameType = null,
    Object? gameName = null,
    Object? category2Name = null,
    Object? category3Id = null,
    Object? category3Name = null,
    Object? eventStart = null,
    Object? outcomes = null,
  }) {
    return _then(_value.copyWith(
      category1Id: null == category1Id
          ? _value.category1Id
          : category1Id // ignore: cast_nullable_to_non_nullable
              as int,
      category1Name: null == category1Name
          ? _value.category1Name
          : category1Name // ignore: cast_nullable_to_non_nullable
              as String,
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as int,
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      category2Name: null == category2Name
          ? _value.category2Name
          : category2Name // ignore: cast_nullable_to_non_nullable
              as String,
      category3Id: null == category3Id
          ? _value.category3Id
          : category3Id // ignore: cast_nullable_to_non_nullable
              as int,
      category3Name: null == category3Name
          ? _value.category3Name
          : category3Name // ignore: cast_nullable_to_non_nullable
              as String,
      eventStart: null == eventStart
          ? _value.eventStart
          : eventStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      outcomes: null == outcomes
          ? _value.outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<SelectableOutcome>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameCardDataCopyWith<$Res>
    implements $GameCardDataCopyWith<$Res> {
  factory _$$_GameCardDataCopyWith(
          _$_GameCardData value, $Res Function(_$_GameCardData) then) =
      __$$_GameCardDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int category1Id,
      String category1Name,
      int gameType,
      String gameName,
      String category2Name,
      int category3Id,
      String category3Name,
      DateTime eventStart,
      List<SelectableOutcome> outcomes});
}

/// @nodoc
class __$$_GameCardDataCopyWithImpl<$Res>
    extends _$GameCardDataCopyWithImpl<$Res, _$_GameCardData>
    implements _$$_GameCardDataCopyWith<$Res> {
  __$$_GameCardDataCopyWithImpl(
      _$_GameCardData _value, $Res Function(_$_GameCardData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category1Id = null,
    Object? category1Name = null,
    Object? gameType = null,
    Object? gameName = null,
    Object? category2Name = null,
    Object? category3Id = null,
    Object? category3Name = null,
    Object? eventStart = null,
    Object? outcomes = null,
  }) {
    return _then(_$_GameCardData(
      category1Id: null == category1Id
          ? _value.category1Id
          : category1Id // ignore: cast_nullable_to_non_nullable
              as int,
      category1Name: null == category1Name
          ? _value.category1Name
          : category1Name // ignore: cast_nullable_to_non_nullable
              as String,
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as int,
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      category2Name: null == category2Name
          ? _value.category2Name
          : category2Name // ignore: cast_nullable_to_non_nullable
              as String,
      category3Id: null == category3Id
          ? _value.category3Id
          : category3Id // ignore: cast_nullable_to_non_nullable
              as int,
      category3Name: null == category3Name
          ? _value.category3Name
          : category3Name // ignore: cast_nullable_to_non_nullable
              as String,
      eventStart: null == eventStart
          ? _value.eventStart
          : eventStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      outcomes: null == outcomes
          ? _value._outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<SelectableOutcome>,
    ));
  }
}

/// @nodoc

class _$_GameCardData extends _GameCardData {
  _$_GameCardData(
      {required this.category1Id,
      required this.category1Name,
      required this.gameType,
      required this.gameName,
      required this.category2Name,
      required this.category3Id,
      required this.category3Name,
      required this.eventStart,
      required final List<SelectableOutcome> outcomes})
      : _outcomes = outcomes,
        super._();

  @override
  final int category1Id;
  @override
  final String category1Name;
  @override
  final int gameType;
  @override
  final String gameName;
  @override
  final String category2Name;
  @override
  final int category3Id;
  @override
  final String category3Name;
  @override
  final DateTime eventStart;
  final List<SelectableOutcome> _outcomes;
  @override
  List<SelectableOutcome> get outcomes {
    if (_outcomes is EqualUnmodifiableListView) return _outcomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outcomes);
  }

  @override
  String toString() {
    return 'GameCardData(category1Id: $category1Id, category1Name: $category1Name, gameType: $gameType, gameName: $gameName, category2Name: $category2Name, category3Id: $category3Id, category3Name: $category3Name, eventStart: $eventStart, outcomes: $outcomes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameCardData &&
            (identical(other.category1Id, category1Id) ||
                other.category1Id == category1Id) &&
            (identical(other.category1Name, category1Name) ||
                other.category1Name == category1Name) &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType) &&
            (identical(other.gameName, gameName) ||
                other.gameName == gameName) &&
            (identical(other.category2Name, category2Name) ||
                other.category2Name == category2Name) &&
            (identical(other.category3Id, category3Id) ||
                other.category3Id == category3Id) &&
            (identical(other.category3Name, category3Name) ||
                other.category3Name == category3Name) &&
            (identical(other.eventStart, eventStart) ||
                other.eventStart == eventStart) &&
            const DeepCollectionEquality().equals(other._outcomes, _outcomes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      category1Id,
      category1Name,
      gameType,
      gameName,
      category2Name,
      category3Id,
      category3Name,
      eventStart,
      const DeepCollectionEquality().hash(_outcomes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameCardDataCopyWith<_$_GameCardData> get copyWith =>
      __$$_GameCardDataCopyWithImpl<_$_GameCardData>(this, _$identity);
}

abstract class _GameCardData extends GameCardData {
  factory _GameCardData(
      {required final int category1Id,
      required final String category1Name,
      required final int gameType,
      required final String gameName,
      required final String category2Name,
      required final int category3Id,
      required final String category3Name,
      required final DateTime eventStart,
      required final List<SelectableOutcome> outcomes}) = _$_GameCardData;
  _GameCardData._() : super._();

  @override
  int get category1Id;
  @override
  String get category1Name;
  @override
  int get gameType;
  @override
  String get gameName;
  @override
  String get category2Name;
  @override
  int get category3Id;
  @override
  String get category3Name;
  @override
  DateTime get eventStart;
  @override
  List<SelectableOutcome> get outcomes;
  @override
  @JsonKey(ignore: true)
  _$$_GameCardDataCopyWith<_$_GameCardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectableOutcome {
  bool get isSelected => throw _privateConstructorUsedError;
  GameOutcome get outcome => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectableOutcomeCopyWith<SelectableOutcome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectableOutcomeCopyWith<$Res> {
  factory $SelectableOutcomeCopyWith(
          SelectableOutcome value, $Res Function(SelectableOutcome) then) =
      _$SelectableOutcomeCopyWithImpl<$Res, SelectableOutcome>;
  @useResult
  $Res call({bool isSelected, GameOutcome outcome});

  $GameOutcomeCopyWith<$Res> get outcome;
}

/// @nodoc
class _$SelectableOutcomeCopyWithImpl<$Res, $Val extends SelectableOutcome>
    implements $SelectableOutcomeCopyWith<$Res> {
  _$SelectableOutcomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? outcome = null,
  }) {
    return _then(_value.copyWith(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      outcome: null == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as GameOutcome,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameOutcomeCopyWith<$Res> get outcome {
    return $GameOutcomeCopyWith<$Res>(_value.outcome, (value) {
      return _then(_value.copyWith(outcome: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SelectableOutcomeCopyWith<$Res>
    implements $SelectableOutcomeCopyWith<$Res> {
  factory _$$_SelectableOutcomeCopyWith(_$_SelectableOutcome value,
          $Res Function(_$_SelectableOutcome) then) =
      __$$_SelectableOutcomeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSelected, GameOutcome outcome});

  @override
  $GameOutcomeCopyWith<$Res> get outcome;
}

/// @nodoc
class __$$_SelectableOutcomeCopyWithImpl<$Res>
    extends _$SelectableOutcomeCopyWithImpl<$Res, _$_SelectableOutcome>
    implements _$$_SelectableOutcomeCopyWith<$Res> {
  __$$_SelectableOutcomeCopyWithImpl(
      _$_SelectableOutcome _value, $Res Function(_$_SelectableOutcome) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? outcome = null,
  }) {
    return _then(_$_SelectableOutcome(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      outcome: null == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as GameOutcome,
    ));
  }
}

/// @nodoc

class _$_SelectableOutcome extends _SelectableOutcome {
  _$_SelectableOutcome({required this.isSelected, required this.outcome})
      : super._();

  @override
  final bool isSelected;
  @override
  final GameOutcome outcome;

  @override
  String toString() {
    return 'SelectableOutcome(isSelected: $isSelected, outcome: $outcome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectableOutcome &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.outcome, outcome) || other.outcome == outcome));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected, outcome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectableOutcomeCopyWith<_$_SelectableOutcome> get copyWith =>
      __$$_SelectableOutcomeCopyWithImpl<_$_SelectableOutcome>(
          this, _$identity);
}

abstract class _SelectableOutcome extends SelectableOutcome {
  factory _SelectableOutcome(
      {required final bool isSelected,
      required final GameOutcome outcome}) = _$_SelectableOutcome;
  _SelectableOutcome._() : super._();

  @override
  bool get isSelected;
  @override
  GameOutcome get outcome;
  @override
  @JsonKey(ignore: true)
  _$$_SelectableOutcomeCopyWith<_$_SelectableOutcome> get copyWith =>
      throw _privateConstructorUsedError;
}
