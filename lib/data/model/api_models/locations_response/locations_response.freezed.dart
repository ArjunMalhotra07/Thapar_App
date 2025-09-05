// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locations_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LocationsApiResponse _$LocationsApiResponseFromJson(Map<String, dynamic> json) {
  return _LocationsApiResponse.fromJson(json);
}

/// @nodoc
mixin _$LocationsApiResponse {
  bool get success => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<Location> get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;

  /// Serializes this LocationsApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationsApiResponseCopyWith<LocationsApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsApiResponseCopyWith<$Res> {
  factory $LocationsApiResponseCopyWith(
    LocationsApiResponse value,
    $Res Function(LocationsApiResponse) then,
  ) = _$LocationsApiResponseCopyWithImpl<$Res, LocationsApiResponse>;
  @useResult
  $Res call({
    bool success,
    int count,
    List<Location> data,
    String? error,
    String? details,
  });
}

/// @nodoc
class _$LocationsApiResponseCopyWithImpl<
  $Res,
  $Val extends LocationsApiResponse
>
    implements $LocationsApiResponseCopyWith<$Res> {
  _$LocationsApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? count = null,
    Object? data = null,
    Object? error = freezed,
    Object? details = freezed,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<Location>,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            details: freezed == details
                ? _value.details
                : details // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocationsApiResponseImplCopyWith<$Res>
    implements $LocationsApiResponseCopyWith<$Res> {
  factory _$$LocationsApiResponseImplCopyWith(
    _$LocationsApiResponseImpl value,
    $Res Function(_$LocationsApiResponseImpl) then,
  ) = __$$LocationsApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool success,
    int count,
    List<Location> data,
    String? error,
    String? details,
  });
}

/// @nodoc
class __$$LocationsApiResponseImplCopyWithImpl<$Res>
    extends _$LocationsApiResponseCopyWithImpl<$Res, _$LocationsApiResponseImpl>
    implements _$$LocationsApiResponseImplCopyWith<$Res> {
  __$$LocationsApiResponseImplCopyWithImpl(
    _$LocationsApiResponseImpl _value,
    $Res Function(_$LocationsApiResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? count = null,
    Object? data = null,
    Object? error = freezed,
    Object? details = freezed,
  }) {
    return _then(
      _$LocationsApiResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<Location>,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        details: freezed == details
            ? _value.details
            : details // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationsApiResponseImpl implements _LocationsApiResponse {
  const _$LocationsApiResponseImpl({
    required this.success,
    required this.count,
    required final List<Location> data,
    this.error,
    this.details,
  }) : _data = data;

  factory _$LocationsApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationsApiResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final int count;
  final List<Location> _data;
  @override
  List<Location> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String? error;
  @override
  final String? details;

  @override
  String toString() {
    return 'LocationsApiResponse(success: $success, count: $count, data: $data, error: $error, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    count,
    const DeepCollectionEquality().hash(_data),
    error,
    details,
  );

  /// Create a copy of LocationsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationsApiResponseImplCopyWith<_$LocationsApiResponseImpl>
  get copyWith =>
      __$$LocationsApiResponseImplCopyWithImpl<_$LocationsApiResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationsApiResponseImplToJson(this);
  }
}

abstract class _LocationsApiResponse implements LocationsApiResponse {
  const factory _LocationsApiResponse({
    required final bool success,
    required final int count,
    required final List<Location> data,
    final String? error,
    final String? details,
  }) = _$LocationsApiResponseImpl;

  factory _LocationsApiResponse.fromJson(Map<String, dynamic> json) =
      _$LocationsApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  int get count;
  @override
  List<Location> get data;
  @override
  String? get error;
  @override
  String? get details;

  /// Create a copy of LocationsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationsApiResponseImplCopyWith<_$LocationsApiResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
