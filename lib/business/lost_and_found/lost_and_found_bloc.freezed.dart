// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lost_and_found_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LostAndFoundEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchItems,
    required TResult Function(String query) searchItems,
    required TResult Function() clearSearch,
    required TResult Function() refreshItems,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchItems,
    TResult? Function(String query)? searchItems,
    TResult? Function()? clearSearch,
    TResult? Function()? refreshItems,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchItems,
    TResult Function(String query)? searchItems,
    TResult Function()? clearSearch,
    TResult Function()? refreshItems,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchItems value) fetchItems,
    required TResult Function(_SearchItems value) searchItems,
    required TResult Function(_ClearSearch value) clearSearch,
    required TResult Function(_RefreshItems value) refreshItems,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchItems value)? fetchItems,
    TResult? Function(_SearchItems value)? searchItems,
    TResult? Function(_ClearSearch value)? clearSearch,
    TResult? Function(_RefreshItems value)? refreshItems,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchItems value)? fetchItems,
    TResult Function(_SearchItems value)? searchItems,
    TResult Function(_ClearSearch value)? clearSearch,
    TResult Function(_RefreshItems value)? refreshItems,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LostAndFoundEventCopyWith<$Res> {
  factory $LostAndFoundEventCopyWith(
    LostAndFoundEvent value,
    $Res Function(LostAndFoundEvent) then,
  ) = _$LostAndFoundEventCopyWithImpl<$Res, LostAndFoundEvent>;
}

/// @nodoc
class _$LostAndFoundEventCopyWithImpl<$Res, $Val extends LostAndFoundEvent>
    implements $LostAndFoundEventCopyWith<$Res> {
  _$LostAndFoundEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LostAndFoundEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$LostAndFoundEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LostAndFoundEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LostAndFoundEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchItems,
    required TResult Function(String query) searchItems,
    required TResult Function() clearSearch,
    required TResult Function() refreshItems,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchItems,
    TResult? Function(String query)? searchItems,
    TResult? Function()? clearSearch,
    TResult? Function()? refreshItems,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchItems,
    TResult Function(String query)? searchItems,
    TResult Function()? clearSearch,
    TResult Function()? refreshItems,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchItems value) fetchItems,
    required TResult Function(_SearchItems value) searchItems,
    required TResult Function(_ClearSearch value) clearSearch,
    required TResult Function(_RefreshItems value) refreshItems,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchItems value)? fetchItems,
    TResult? Function(_SearchItems value)? searchItems,
    TResult? Function(_ClearSearch value)? clearSearch,
    TResult? Function(_RefreshItems value)? refreshItems,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchItems value)? fetchItems,
    TResult Function(_SearchItems value)? searchItems,
    TResult Function(_ClearSearch value)? clearSearch,
    TResult Function(_RefreshItems value)? refreshItems,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LostAndFoundEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchItemsImplCopyWith<$Res> {
  factory _$$FetchItemsImplCopyWith(
    _$FetchItemsImpl value,
    $Res Function(_$FetchItemsImpl) then,
  ) = __$$FetchItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchItemsImplCopyWithImpl<$Res>
    extends _$LostAndFoundEventCopyWithImpl<$Res, _$FetchItemsImpl>
    implements _$$FetchItemsImplCopyWith<$Res> {
  __$$FetchItemsImplCopyWithImpl(
    _$FetchItemsImpl _value,
    $Res Function(_$FetchItemsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LostAndFoundEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchItemsImpl implements _FetchItems {
  const _$FetchItemsImpl();

  @override
  String toString() {
    return 'LostAndFoundEvent.fetchItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchItems,
    required TResult Function(String query) searchItems,
    required TResult Function() clearSearch,
    required TResult Function() refreshItems,
  }) {
    return fetchItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchItems,
    TResult? Function(String query)? searchItems,
    TResult? Function()? clearSearch,
    TResult? Function()? refreshItems,
  }) {
    return fetchItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchItems,
    TResult Function(String query)? searchItems,
    TResult Function()? clearSearch,
    TResult Function()? refreshItems,
    required TResult orElse(),
  }) {
    if (fetchItems != null) {
      return fetchItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchItems value) fetchItems,
    required TResult Function(_SearchItems value) searchItems,
    required TResult Function(_ClearSearch value) clearSearch,
    required TResult Function(_RefreshItems value) refreshItems,
  }) {
    return fetchItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchItems value)? fetchItems,
    TResult? Function(_SearchItems value)? searchItems,
    TResult? Function(_ClearSearch value)? clearSearch,
    TResult? Function(_RefreshItems value)? refreshItems,
  }) {
    return fetchItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchItems value)? fetchItems,
    TResult Function(_SearchItems value)? searchItems,
    TResult Function(_ClearSearch value)? clearSearch,
    TResult Function(_RefreshItems value)? refreshItems,
    required TResult orElse(),
  }) {
    if (fetchItems != null) {
      return fetchItems(this);
    }
    return orElse();
  }
}

abstract class _FetchItems implements LostAndFoundEvent {
  const factory _FetchItems() = _$FetchItemsImpl;
}

/// @nodoc
abstract class _$$SearchItemsImplCopyWith<$Res> {
  factory _$$SearchItemsImplCopyWith(
    _$SearchItemsImpl value,
    $Res Function(_$SearchItemsImpl) then,
  ) = __$$SearchItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchItemsImplCopyWithImpl<$Res>
    extends _$LostAndFoundEventCopyWithImpl<$Res, _$SearchItemsImpl>
    implements _$$SearchItemsImplCopyWith<$Res> {
  __$$SearchItemsImplCopyWithImpl(
    _$SearchItemsImpl _value,
    $Res Function(_$SearchItemsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LostAndFoundEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$SearchItemsImpl(
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SearchItemsImpl implements _SearchItems {
  const _$SearchItemsImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'LostAndFoundEvent.searchItems(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchItemsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of LostAndFoundEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchItemsImplCopyWith<_$SearchItemsImpl> get copyWith =>
      __$$SearchItemsImplCopyWithImpl<_$SearchItemsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchItems,
    required TResult Function(String query) searchItems,
    required TResult Function() clearSearch,
    required TResult Function() refreshItems,
  }) {
    return searchItems(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchItems,
    TResult? Function(String query)? searchItems,
    TResult? Function()? clearSearch,
    TResult? Function()? refreshItems,
  }) {
    return searchItems?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchItems,
    TResult Function(String query)? searchItems,
    TResult Function()? clearSearch,
    TResult Function()? refreshItems,
    required TResult orElse(),
  }) {
    if (searchItems != null) {
      return searchItems(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchItems value) fetchItems,
    required TResult Function(_SearchItems value) searchItems,
    required TResult Function(_ClearSearch value) clearSearch,
    required TResult Function(_RefreshItems value) refreshItems,
  }) {
    return searchItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchItems value)? fetchItems,
    TResult? Function(_SearchItems value)? searchItems,
    TResult? Function(_ClearSearch value)? clearSearch,
    TResult? Function(_RefreshItems value)? refreshItems,
  }) {
    return searchItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchItems value)? fetchItems,
    TResult Function(_SearchItems value)? searchItems,
    TResult Function(_ClearSearch value)? clearSearch,
    TResult Function(_RefreshItems value)? refreshItems,
    required TResult orElse(),
  }) {
    if (searchItems != null) {
      return searchItems(this);
    }
    return orElse();
  }
}

abstract class _SearchItems implements LostAndFoundEvent {
  const factory _SearchItems({required final String query}) = _$SearchItemsImpl;

  String get query;

  /// Create a copy of LostAndFoundEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchItemsImplCopyWith<_$SearchItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSearchImplCopyWith<$Res> {
  factory _$$ClearSearchImplCopyWith(
    _$ClearSearchImpl value,
    $Res Function(_$ClearSearchImpl) then,
  ) = __$$ClearSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSearchImplCopyWithImpl<$Res>
    extends _$LostAndFoundEventCopyWithImpl<$Res, _$ClearSearchImpl>
    implements _$$ClearSearchImplCopyWith<$Res> {
  __$$ClearSearchImplCopyWithImpl(
    _$ClearSearchImpl _value,
    $Res Function(_$ClearSearchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LostAndFoundEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearSearchImpl implements _ClearSearch {
  const _$ClearSearchImpl();

  @override
  String toString() {
    return 'LostAndFoundEvent.clearSearch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchItems,
    required TResult Function(String query) searchItems,
    required TResult Function() clearSearch,
    required TResult Function() refreshItems,
  }) {
    return clearSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchItems,
    TResult? Function(String query)? searchItems,
    TResult? Function()? clearSearch,
    TResult? Function()? refreshItems,
  }) {
    return clearSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchItems,
    TResult Function(String query)? searchItems,
    TResult Function()? clearSearch,
    TResult Function()? refreshItems,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchItems value) fetchItems,
    required TResult Function(_SearchItems value) searchItems,
    required TResult Function(_ClearSearch value) clearSearch,
    required TResult Function(_RefreshItems value) refreshItems,
  }) {
    return clearSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchItems value)? fetchItems,
    TResult? Function(_SearchItems value)? searchItems,
    TResult? Function(_ClearSearch value)? clearSearch,
    TResult? Function(_RefreshItems value)? refreshItems,
  }) {
    return clearSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchItems value)? fetchItems,
    TResult Function(_SearchItems value)? searchItems,
    TResult Function(_ClearSearch value)? clearSearch,
    TResult Function(_RefreshItems value)? refreshItems,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch(this);
    }
    return orElse();
  }
}

abstract class _ClearSearch implements LostAndFoundEvent {
  const factory _ClearSearch() = _$ClearSearchImpl;
}

/// @nodoc
abstract class _$$RefreshItemsImplCopyWith<$Res> {
  factory _$$RefreshItemsImplCopyWith(
    _$RefreshItemsImpl value,
    $Res Function(_$RefreshItemsImpl) then,
  ) = __$$RefreshItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshItemsImplCopyWithImpl<$Res>
    extends _$LostAndFoundEventCopyWithImpl<$Res, _$RefreshItemsImpl>
    implements _$$RefreshItemsImplCopyWith<$Res> {
  __$$RefreshItemsImplCopyWithImpl(
    _$RefreshItemsImpl _value,
    $Res Function(_$RefreshItemsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LostAndFoundEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshItemsImpl implements _RefreshItems {
  const _$RefreshItemsImpl();

  @override
  String toString() {
    return 'LostAndFoundEvent.refreshItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchItems,
    required TResult Function(String query) searchItems,
    required TResult Function() clearSearch,
    required TResult Function() refreshItems,
  }) {
    return refreshItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchItems,
    TResult? Function(String query)? searchItems,
    TResult? Function()? clearSearch,
    TResult? Function()? refreshItems,
  }) {
    return refreshItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchItems,
    TResult Function(String query)? searchItems,
    TResult Function()? clearSearch,
    TResult Function()? refreshItems,
    required TResult orElse(),
  }) {
    if (refreshItems != null) {
      return refreshItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchItems value) fetchItems,
    required TResult Function(_SearchItems value) searchItems,
    required TResult Function(_ClearSearch value) clearSearch,
    required TResult Function(_RefreshItems value) refreshItems,
  }) {
    return refreshItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchItems value)? fetchItems,
    TResult? Function(_SearchItems value)? searchItems,
    TResult? Function(_ClearSearch value)? clearSearch,
    TResult? Function(_RefreshItems value)? refreshItems,
  }) {
    return refreshItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchItems value)? fetchItems,
    TResult Function(_SearchItems value)? searchItems,
    TResult Function(_ClearSearch value)? clearSearch,
    TResult Function(_RefreshItems value)? refreshItems,
    required TResult orElse(),
  }) {
    if (refreshItems != null) {
      return refreshItems(this);
    }
    return orElse();
  }
}

abstract class _RefreshItems implements LostAndFoundEvent {
  const factory _RefreshItems() = _$RefreshItemsImpl;
}

/// @nodoc
mixin _$LostAndFoundState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<LostFoundItem> items,
      String searchQuery,
      int count,
    )
    success,
    required TResult Function(String message) empty,
    required TResult Function(String message) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LostFoundItem> items, String searchQuery, int count)?
    success,
    TResult? Function(String message)? empty,
    TResult? Function(String message)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LostFoundItem> items, String searchQuery, int count)?
    success,
    TResult Function(String message)? empty,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failure value) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failure value)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LostAndFoundStateCopyWith<$Res> {
  factory $LostAndFoundStateCopyWith(
    LostAndFoundState value,
    $Res Function(LostAndFoundState) then,
  ) = _$LostAndFoundStateCopyWithImpl<$Res, LostAndFoundState>;
}

/// @nodoc
class _$LostAndFoundStateCopyWithImpl<$Res, $Val extends LostAndFoundState>
    implements $LostAndFoundStateCopyWith<$Res> {
  _$LostAndFoundStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LostAndFoundState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LostAndFoundStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LostAndFoundState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LostAndFoundState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<LostFoundItem> items,
      String searchQuery,
      int count,
    )
    success,
    required TResult Function(String message) empty,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LostFoundItem> items, String searchQuery, int count)?
    success,
    TResult? Function(String message)? empty,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LostFoundItem> items, String searchQuery, int count)?
    success,
    TResult Function(String message)? empty,
    TResult Function(String message)? failure,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LostAndFoundState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LostAndFoundStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LostAndFoundState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LostAndFoundState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<LostFoundItem> items,
      String searchQuery,
      int count,
    )
    success,
    required TResult Function(String message) empty,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LostFoundItem> items, String searchQuery, int count)?
    success,
    TResult? Function(String message)? empty,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LostFoundItem> items, String searchQuery, int count)?
    success,
    TResult Function(String message)? empty,
    TResult Function(String message)? failure,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LostAndFoundState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LostFoundItem> items, String searchQuery, int count});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$LostAndFoundStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LostAndFoundState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? searchQuery = null,
    Object? count = null,
  }) {
    return _then(
      _$SuccessImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<LostFoundItem>,
        searchQuery: null == searchQuery
            ? _value.searchQuery
            : searchQuery // ignore: cast_nullable_to_non_nullable
                  as String,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({
    required final List<LostFoundItem> items,
    required this.searchQuery,
    required this.count,
  }) : _items = items;

  final List<LostFoundItem> _items;
  @override
  List<LostFoundItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String searchQuery;
  @override
  final int count;

  @override
  String toString() {
    return 'LostAndFoundState.success(items: $items, searchQuery: $searchQuery, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    searchQuery,
    count,
  );

  /// Create a copy of LostAndFoundState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<LostFoundItem> items,
      String searchQuery,
      int count,
    )
    success,
    required TResult Function(String message) empty,
    required TResult Function(String message) failure,
  }) {
    return success(items, searchQuery, count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LostFoundItem> items, String searchQuery, int count)?
    success,
    TResult? Function(String message)? empty,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(items, searchQuery, count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LostFoundItem> items, String searchQuery, int count)?
    success,
    TResult Function(String message)? empty,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(items, searchQuery, count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LostAndFoundState {
  const factory _Success({
    required final List<LostFoundItem> items,
    required final String searchQuery,
    required final int count,
  }) = _$SuccessImpl;

  List<LostFoundItem> get items;
  String get searchQuery;
  int get count;

  /// Create a copy of LostAndFoundState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
    _$EmptyImpl value,
    $Res Function(_$EmptyImpl) then,
  ) = __$$EmptyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$LostAndFoundStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
    _$EmptyImpl _value,
    $Res Function(_$EmptyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LostAndFoundState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$EmptyImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LostAndFoundState.empty(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LostAndFoundState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      __$$EmptyImplCopyWithImpl<_$EmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<LostFoundItem> items,
      String searchQuery,
      int count,
    )
    success,
    required TResult Function(String message) empty,
    required TResult Function(String message) failure,
  }) {
    return empty(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LostFoundItem> items, String searchQuery, int count)?
    success,
    TResult? Function(String message)? empty,
    TResult? Function(String message)? failure,
  }) {
    return empty?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LostFoundItem> items, String searchQuery, int count)?
    success,
    TResult Function(String message)? empty,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failure value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failure value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements LostAndFoundState {
  const factory _Empty({required final String message}) = _$EmptyImpl;

  String get message;

  /// Create a copy of LostAndFoundState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
    _$FailureImpl value,
    $Res Function(_$FailureImpl) then,
  ) = __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$LostAndFoundStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
    _$FailureImpl _value,
    $Res Function(_$FailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LostAndFoundState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$FailureImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LostAndFoundState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LostAndFoundState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<LostFoundItem> items,
      String searchQuery,
      int count,
    )
    success,
    required TResult Function(String message) empty,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LostFoundItem> items, String searchQuery, int count)?
    success,
    TResult? Function(String message)? empty,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LostFoundItem> items, String searchQuery, int count)?
    success,
    TResult Function(String message)? empty,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements LostAndFoundState {
  const factory _Failure({required final String message}) = _$FailureImpl;

  String get message;

  /// Create a copy of LostAndFoundState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
