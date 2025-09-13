// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatHistoryMessage _$ChatHistoryMessageFromJson(Map<String, dynamic> json) {
  return _ChatHistoryMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatHistoryMessage {
  String get role => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  /// Serializes this ChatHistoryMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatHistoryMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatHistoryMessageCopyWith<ChatHistoryMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatHistoryMessageCopyWith<$Res> {
  factory $ChatHistoryMessageCopyWith(
    ChatHistoryMessage value,
    $Res Function(ChatHistoryMessage) then,
  ) = _$ChatHistoryMessageCopyWithImpl<$Res, ChatHistoryMessage>;
  @useResult
  $Res call({String role, String message, String timestamp});
}

/// @nodoc
class _$ChatHistoryMessageCopyWithImpl<$Res, $Val extends ChatHistoryMessage>
    implements $ChatHistoryMessageCopyWith<$Res> {
  _$ChatHistoryMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatHistoryMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? message = null,
    Object? timestamp = null,
  }) {
    return _then(
      _value.copyWith(
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatHistoryMessageImplCopyWith<$Res>
    implements $ChatHistoryMessageCopyWith<$Res> {
  factory _$$ChatHistoryMessageImplCopyWith(
    _$ChatHistoryMessageImpl value,
    $Res Function(_$ChatHistoryMessageImpl) then,
  ) = __$$ChatHistoryMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String message, String timestamp});
}

/// @nodoc
class __$$ChatHistoryMessageImplCopyWithImpl<$Res>
    extends _$ChatHistoryMessageCopyWithImpl<$Res, _$ChatHistoryMessageImpl>
    implements _$$ChatHistoryMessageImplCopyWith<$Res> {
  __$$ChatHistoryMessageImplCopyWithImpl(
    _$ChatHistoryMessageImpl _value,
    $Res Function(_$ChatHistoryMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatHistoryMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? message = null,
    Object? timestamp = null,
  }) {
    return _then(
      _$ChatHistoryMessageImpl(
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatHistoryMessageImpl implements _ChatHistoryMessage {
  const _$ChatHistoryMessageImpl({
    required this.role,
    required this.message,
    required this.timestamp,
  });

  factory _$ChatHistoryMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatHistoryMessageImplFromJson(json);

  @override
  final String role;
  @override
  final String message;
  @override
  final String timestamp;

  @override
  String toString() {
    return 'ChatHistoryMessage(role: $role, message: $message, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatHistoryMessageImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, message, timestamp);

  /// Create a copy of ChatHistoryMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatHistoryMessageImplCopyWith<_$ChatHistoryMessageImpl> get copyWith =>
      __$$ChatHistoryMessageImplCopyWithImpl<_$ChatHistoryMessageImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatHistoryMessageImplToJson(this);
  }
}

abstract class _ChatHistoryMessage implements ChatHistoryMessage {
  const factory _ChatHistoryMessage({
    required final String role,
    required final String message,
    required final String timestamp,
  }) = _$ChatHistoryMessageImpl;

  factory _ChatHistoryMessage.fromJson(Map<String, dynamic> json) =
      _$ChatHistoryMessageImpl.fromJson;

  @override
  String get role;
  @override
  String get message;
  @override
  String get timestamp;

  /// Create a copy of ChatHistoryMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatHistoryMessageImplCopyWith<_$ChatHistoryMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatHistoryApiResponse _$ChatHistoryApiResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ChatHistoryApiResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatHistoryApiResponse {
  bool get success => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<ChatHistoryMessage> get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;

  /// Serializes this ChatHistoryApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatHistoryApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatHistoryApiResponseCopyWith<ChatHistoryApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatHistoryApiResponseCopyWith<$Res> {
  factory $ChatHistoryApiResponseCopyWith(
    ChatHistoryApiResponse value,
    $Res Function(ChatHistoryApiResponse) then,
  ) = _$ChatHistoryApiResponseCopyWithImpl<$Res, ChatHistoryApiResponse>;
  @useResult
  $Res call({
    bool success,
    int count,
    List<ChatHistoryMessage> data,
    String? error,
    String? details,
  });
}

/// @nodoc
class _$ChatHistoryApiResponseCopyWithImpl<
  $Res,
  $Val extends ChatHistoryApiResponse
>
    implements $ChatHistoryApiResponseCopyWith<$Res> {
  _$ChatHistoryApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatHistoryApiResponse
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
                      as List<ChatHistoryMessage>,
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
abstract class _$$ChatHistoryApiResponseImplCopyWith<$Res>
    implements $ChatHistoryApiResponseCopyWith<$Res> {
  factory _$$ChatHistoryApiResponseImplCopyWith(
    _$ChatHistoryApiResponseImpl value,
    $Res Function(_$ChatHistoryApiResponseImpl) then,
  ) = __$$ChatHistoryApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool success,
    int count,
    List<ChatHistoryMessage> data,
    String? error,
    String? details,
  });
}

/// @nodoc
class __$$ChatHistoryApiResponseImplCopyWithImpl<$Res>
    extends
        _$ChatHistoryApiResponseCopyWithImpl<$Res, _$ChatHistoryApiResponseImpl>
    implements _$$ChatHistoryApiResponseImplCopyWith<$Res> {
  __$$ChatHistoryApiResponseImplCopyWithImpl(
    _$ChatHistoryApiResponseImpl _value,
    $Res Function(_$ChatHistoryApiResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatHistoryApiResponse
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
      _$ChatHistoryApiResponseImpl(
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
                  as List<ChatHistoryMessage>,
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
class _$ChatHistoryApiResponseImpl implements _ChatHistoryApiResponse {
  const _$ChatHistoryApiResponseImpl({
    required this.success,
    required this.count,
    required final List<ChatHistoryMessage> data,
    this.error,
    this.details,
  }) : _data = data;

  factory _$ChatHistoryApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatHistoryApiResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final int count;
  final List<ChatHistoryMessage> _data;
  @override
  List<ChatHistoryMessage> get data {
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
    return 'ChatHistoryApiResponse(success: $success, count: $count, data: $data, error: $error, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatHistoryApiResponseImpl &&
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

  /// Create a copy of ChatHistoryApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatHistoryApiResponseImplCopyWith<_$ChatHistoryApiResponseImpl>
  get copyWith =>
      __$$ChatHistoryApiResponseImplCopyWithImpl<_$ChatHistoryApiResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatHistoryApiResponseImplToJson(this);
  }
}

abstract class _ChatHistoryApiResponse implements ChatHistoryApiResponse {
  const factory _ChatHistoryApiResponse({
    required final bool success,
    required final int count,
    required final List<ChatHistoryMessage> data,
    final String? error,
    final String? details,
  }) = _$ChatHistoryApiResponseImpl;

  factory _ChatHistoryApiResponse.fromJson(Map<String, dynamic> json) =
      _$ChatHistoryApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  int get count;
  @override
  List<ChatHistoryMessage> get data;
  @override
  String? get error;
  @override
  String? get details;

  /// Create a copy of ChatHistoryApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatHistoryApiResponseImplCopyWith<_$ChatHistoryApiResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
