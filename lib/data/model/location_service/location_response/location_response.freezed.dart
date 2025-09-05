// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LocationsResponse _$LocationsResponseFromJson(Map<String, dynamic> json) {
  return _LocationsResponse.fromJson(json);
}

/// @nodoc
mixin _$LocationsResponse {
  List<Location> get locations => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this LocationsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationsResponseCopyWith<LocationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsResponseCopyWith<$Res> {
  factory $LocationsResponseCopyWith(
    LocationsResponse value,
    $Res Function(LocationsResponse) then,
  ) = _$LocationsResponseCopyWithImpl<$Res, LocationsResponse>;
  @useResult
  $Res call({List<Location> locations, int count, int limit});
}

/// @nodoc
class _$LocationsResponseCopyWithImpl<$Res, $Val extends LocationsResponse>
    implements $LocationsResponseCopyWith<$Res> {
  _$LocationsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
    Object? count = null,
    Object? limit = null,
  }) {
    return _then(
      _value.copyWith(
            locations: null == locations
                ? _value.locations
                : locations // ignore: cast_nullable_to_non_nullable
                      as List<Location>,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocationsResponseImplCopyWith<$Res>
    implements $LocationsResponseCopyWith<$Res> {
  factory _$$LocationsResponseImplCopyWith(
    _$LocationsResponseImpl value,
    $Res Function(_$LocationsResponseImpl) then,
  ) = __$$LocationsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Location> locations, int count, int limit});
}

/// @nodoc
class __$$LocationsResponseImplCopyWithImpl<$Res>
    extends _$LocationsResponseCopyWithImpl<$Res, _$LocationsResponseImpl>
    implements _$$LocationsResponseImplCopyWith<$Res> {
  __$$LocationsResponseImplCopyWithImpl(
    _$LocationsResponseImpl _value,
    $Res Function(_$LocationsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
    Object? count = null,
    Object? limit = null,
  }) {
    return _then(
      _$LocationsResponseImpl(
        locations: null == locations
            ? _value._locations
            : locations // ignore: cast_nullable_to_non_nullable
                  as List<Location>,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationsResponseImpl implements _LocationsResponse {
  const _$LocationsResponseImpl({
    required final List<Location> locations,
    required this.count,
    required this.limit,
  }) : _locations = locations;

  factory _$LocationsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationsResponseImplFromJson(json);

  final List<Location> _locations;
  @override
  List<Location> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  final int count;
  @override
  final int limit;

  @override
  String toString() {
    return 'LocationsResponse(locations: $locations, count: $count, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsResponseImpl &&
            const DeepCollectionEquality().equals(
              other._locations,
              _locations,
            ) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_locations),
    count,
    limit,
  );

  /// Create a copy of LocationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationsResponseImplCopyWith<_$LocationsResponseImpl> get copyWith =>
      __$$LocationsResponseImplCopyWithImpl<_$LocationsResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationsResponseImplToJson(this);
  }
}

abstract class _LocationsResponse implements LocationsResponse {
  const factory _LocationsResponse({
    required final List<Location> locations,
    required final int count,
    required final int limit,
  }) = _$LocationsResponseImpl;

  factory _LocationsResponse.fromJson(Map<String, dynamic> json) =
      _$LocationsResponseImpl.fromJson;

  @override
  List<Location> get locations;
  @override
  int get count;
  @override
  int get limit;

  /// Create a copy of LocationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationsResponseImplCopyWith<_$LocationsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
