// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GenericResponse _$GenericResponseFromJson(Map<String, dynamic> json) {
  return _GenericResponse.fromJson(json);
}

/// @nodoc
mixin _$GenericResponse {
  String? get message => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  /// Serializes this GenericResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenericResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenericResponseCopyWith<GenericResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericResponseCopyWith<$Res> {
  factory $GenericResponseCopyWith(
    GenericResponse value,
    $Res Function(GenericResponse) then,
  ) = _$GenericResponseCopyWithImpl<$Res, GenericResponse>;
  @useResult
  $Res call({String? message, dynamic data});
}

/// @nodoc
class _$GenericResponseCopyWithImpl<$Res, $Val extends GenericResponse>
    implements $GenericResponseCopyWith<$Res> {
  _$GenericResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenericResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed, Object? data = freezed}) {
    return _then(
      _value.copyWith(
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GenericResponseImplCopyWith<$Res>
    implements $GenericResponseCopyWith<$Res> {
  factory _$$GenericResponseImplCopyWith(
    _$GenericResponseImpl value,
    $Res Function(_$GenericResponseImpl) then,
  ) = __$$GenericResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, dynamic data});
}

/// @nodoc
class __$$GenericResponseImplCopyWithImpl<$Res>
    extends _$GenericResponseCopyWithImpl<$Res, _$GenericResponseImpl>
    implements _$$GenericResponseImplCopyWith<$Res> {
  __$$GenericResponseImplCopyWithImpl(
    _$GenericResponseImpl _value,
    $Res Function(_$GenericResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GenericResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed, Object? data = freezed}) {
    return _then(
      _$GenericResponseImpl(
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        data: freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GenericResponseImpl implements _GenericResponse {
  const _$GenericResponseImpl({required this.message, required this.data});

  factory _$GenericResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenericResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'GenericResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(data),
  );

  /// Create a copy of GenericResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericResponseImplCopyWith<_$GenericResponseImpl> get copyWith =>
      __$$GenericResponseImplCopyWithImpl<_$GenericResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GenericResponseImplToJson(this);
  }
}

abstract class _GenericResponse implements GenericResponse {
  const factory _GenericResponse({
    required final String? message,
    required final dynamic data,
  }) = _$GenericResponseImpl;

  factory _GenericResponse.fromJson(Map<String, dynamic> json) =
      _$GenericResponseImpl.fromJson;

  @override
  String? get message;
  @override
  dynamic get data;

  /// Create a copy of GenericResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericResponseImplCopyWith<_$GenericResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
