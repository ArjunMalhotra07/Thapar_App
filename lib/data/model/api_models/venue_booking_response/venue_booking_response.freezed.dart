// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'venue_booking_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VenueBookingResponse _$VenueBookingResponseFromJson(Map<String, dynamic> json) {
  return _VenueBookingResponse.fromJson(json);
}

/// @nodoc
mixin _$VenueBookingResponse {
  String? get success => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  Venue? get venues => throw _privateConstructorUsedError;

  /// Serializes this VenueBookingResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VenueBookingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VenueBookingResponseCopyWith<VenueBookingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VenueBookingResponseCopyWith<$Res> {
  factory $VenueBookingResponseCopyWith(
    VenueBookingResponse value,
    $Res Function(VenueBookingResponse) then,
  ) = _$VenueBookingResponseCopyWithImpl<$Res, VenueBookingResponse>;
  @useResult
  $Res call({String? success, int? count, Venue? venues});

  $VenueCopyWith<$Res>? get venues;
}

/// @nodoc
class _$VenueBookingResponseCopyWithImpl<
  $Res,
  $Val extends VenueBookingResponse
>
    implements $VenueBookingResponseCopyWith<$Res> {
  _$VenueBookingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VenueBookingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? count = freezed,
    Object? venues = freezed,
  }) {
    return _then(
      _value.copyWith(
            success: freezed == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as String?,
            count: freezed == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int?,
            venues: freezed == venues
                ? _value.venues
                : venues // ignore: cast_nullable_to_non_nullable
                      as Venue?,
          )
          as $Val,
    );
  }

  /// Create a copy of VenueBookingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VenueCopyWith<$Res>? get venues {
    if (_value.venues == null) {
      return null;
    }

    return $VenueCopyWith<$Res>(_value.venues!, (value) {
      return _then(_value.copyWith(venues: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VenueBookingResponseImplCopyWith<$Res>
    implements $VenueBookingResponseCopyWith<$Res> {
  factory _$$VenueBookingResponseImplCopyWith(
    _$VenueBookingResponseImpl value,
    $Res Function(_$VenueBookingResponseImpl) then,
  ) = __$$VenueBookingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? success, int? count, Venue? venues});

  @override
  $VenueCopyWith<$Res>? get venues;
}

/// @nodoc
class __$$VenueBookingResponseImplCopyWithImpl<$Res>
    extends _$VenueBookingResponseCopyWithImpl<$Res, _$VenueBookingResponseImpl>
    implements _$$VenueBookingResponseImplCopyWith<$Res> {
  __$$VenueBookingResponseImplCopyWithImpl(
    _$VenueBookingResponseImpl _value,
    $Res Function(_$VenueBookingResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VenueBookingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? count = freezed,
    Object? venues = freezed,
  }) {
    return _then(
      _$VenueBookingResponseImpl(
        success: freezed == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as String?,
        count: freezed == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int?,
        venues: freezed == venues
            ? _value.venues
            : venues // ignore: cast_nullable_to_non_nullable
                  as Venue?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VenueBookingResponseImpl implements _VenueBookingResponse {
  const _$VenueBookingResponseImpl({
    required this.success,
    required this.count,
    required this.venues,
  });

  factory _$VenueBookingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VenueBookingResponseImplFromJson(json);

  @override
  final String? success;
  @override
  final int? count;
  @override
  final Venue? venues;

  @override
  String toString() {
    return 'VenueBookingResponse(success: $success, count: $count, venues: $venues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VenueBookingResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.venues, venues) || other.venues == venues));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, count, venues);

  /// Create a copy of VenueBookingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VenueBookingResponseImplCopyWith<_$VenueBookingResponseImpl>
  get copyWith =>
      __$$VenueBookingResponseImplCopyWithImpl<_$VenueBookingResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$VenueBookingResponseImplToJson(this);
  }
}

abstract class _VenueBookingResponse implements VenueBookingResponse {
  const factory _VenueBookingResponse({
    required final String? success,
    required final int? count,
    required final Venue? venues,
  }) = _$VenueBookingResponseImpl;

  factory _VenueBookingResponse.fromJson(Map<String, dynamic> json) =
      _$VenueBookingResponseImpl.fromJson;

  @override
  String? get success;
  @override
  int? get count;
  @override
  Venue? get venues;

  /// Create a copy of VenueBookingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VenueBookingResponseImplCopyWith<_$VenueBookingResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
