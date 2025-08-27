// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verifytoken.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VerifyTokenResponse _$VerifyTokenResponseFromJson(Map<String, dynamic> json) {
  return _VerifyTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifyTokenResponse {
  String? get message => throw _privateConstructorUsedError;
  bool? get valid => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "expires_in")
  int? get expiresIn => throw _privateConstructorUsedError;

  /// Serializes this VerifyTokenResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyTokenResponseCopyWith<VerifyTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyTokenResponseCopyWith<$Res> {
  factory $VerifyTokenResponseCopyWith(
    VerifyTokenResponse value,
    $Res Function(VerifyTokenResponse) then,
  ) = _$VerifyTokenResponseCopyWithImpl<$Res, VerifyTokenResponse>;
  @useResult
  $Res call({
    String? message,
    bool? valid,
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "expires_in") int? expiresIn,
  });
}

/// @nodoc
class _$VerifyTokenResponseCopyWithImpl<$Res, $Val extends VerifyTokenResponse>
    implements $VerifyTokenResponseCopyWith<$Res> {
  _$VerifyTokenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? valid = freezed,
    Object? userId = freezed,
    Object? expiresIn = freezed,
  }) {
    return _then(
      _value.copyWith(
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            valid: freezed == valid
                ? _value.valid
                : valid // ignore: cast_nullable_to_non_nullable
                      as bool?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            expiresIn: freezed == expiresIn
                ? _value.expiresIn
                : expiresIn // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VerifyTokenResponseImplCopyWith<$Res>
    implements $VerifyTokenResponseCopyWith<$Res> {
  factory _$$VerifyTokenResponseImplCopyWith(
    _$VerifyTokenResponseImpl value,
    $Res Function(_$VerifyTokenResponseImpl) then,
  ) = __$$VerifyTokenResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? message,
    bool? valid,
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "expires_in") int? expiresIn,
  });
}

/// @nodoc
class __$$VerifyTokenResponseImplCopyWithImpl<$Res>
    extends _$VerifyTokenResponseCopyWithImpl<$Res, _$VerifyTokenResponseImpl>
    implements _$$VerifyTokenResponseImplCopyWith<$Res> {
  __$$VerifyTokenResponseImplCopyWithImpl(
    _$VerifyTokenResponseImpl _value,
    $Res Function(_$VerifyTokenResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VerifyTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? valid = freezed,
    Object? userId = freezed,
    Object? expiresIn = freezed,
  }) {
    return _then(
      _$VerifyTokenResponseImpl(
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        valid: freezed == valid
            ? _value.valid
            : valid // ignore: cast_nullable_to_non_nullable
                  as bool?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        expiresIn: freezed == expiresIn
            ? _value.expiresIn
            : expiresIn // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyTokenResponseImpl implements _VerifyTokenResponse {
  const _$VerifyTokenResponseImpl({
    required this.message,
    required this.valid,
    @JsonKey(name: "user_id") required this.userId,
    @JsonKey(name: "expires_in") required this.expiresIn,
  });

  factory _$VerifyTokenResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyTokenResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? valid;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "expires_in")
  final int? expiresIn;

  @override
  String toString() {
    return 'VerifyTokenResponse(message: $message, valid: $valid, userId: $userId, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyTokenResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.valid, valid) || other.valid == valid) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, message, valid, userId, expiresIn);

  /// Create a copy of VerifyTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyTokenResponseImplCopyWith<_$VerifyTokenResponseImpl> get copyWith =>
      __$$VerifyTokenResponseImplCopyWithImpl<_$VerifyTokenResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyTokenResponseImplToJson(this);
  }
}

abstract class _VerifyTokenResponse implements VerifyTokenResponse {
  const factory _VerifyTokenResponse({
    required final String? message,
    required final bool? valid,
    @JsonKey(name: "user_id") required final String? userId,
    @JsonKey(name: "expires_in") required final int? expiresIn,
  }) = _$VerifyTokenResponseImpl;

  factory _VerifyTokenResponse.fromJson(Map<String, dynamic> json) =
      _$VerifyTokenResponseImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get valid;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "expires_in")
  int? get expiresIn;

  /// Create a copy of VerifyTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyTokenResponseImplCopyWith<_$VerifyTokenResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
