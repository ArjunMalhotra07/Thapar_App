// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HistoryResponse _$HistoryResponseFromJson(Map<String, dynamic> json) {
  return _HistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$HistoryResponse {
  List<HistoryMessage> get messages => throw _privateConstructorUsedError;

  /// Serializes this HistoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryResponseCopyWith<HistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryResponseCopyWith<$Res> {
  factory $HistoryResponseCopyWith(
    HistoryResponse value,
    $Res Function(HistoryResponse) then,
  ) = _$HistoryResponseCopyWithImpl<$Res, HistoryResponse>;
  @useResult
  $Res call({List<HistoryMessage> messages});
}

/// @nodoc
class _$HistoryResponseCopyWithImpl<$Res, $Val extends HistoryResponse>
    implements $HistoryResponseCopyWith<$Res> {
  _$HistoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _value.copyWith(
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<HistoryMessage>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HistoryResponseImplCopyWith<$Res>
    implements $HistoryResponseCopyWith<$Res> {
  factory _$$HistoryResponseImplCopyWith(
    _$HistoryResponseImpl value,
    $Res Function(_$HistoryResponseImpl) then,
  ) = __$$HistoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HistoryMessage> messages});
}

/// @nodoc
class __$$HistoryResponseImplCopyWithImpl<$Res>
    extends _$HistoryResponseCopyWithImpl<$Res, _$HistoryResponseImpl>
    implements _$$HistoryResponseImplCopyWith<$Res> {
  __$$HistoryResponseImplCopyWithImpl(
    _$HistoryResponseImpl _value,
    $Res Function(_$HistoryResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _$HistoryResponseImpl(
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<HistoryMessage>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryResponseImpl implements _HistoryResponse {
  const _$HistoryResponseImpl({required final List<HistoryMessage> messages})
    : _messages = messages;

  factory _$HistoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryResponseImplFromJson(json);

  final List<HistoryMessage> _messages;
  @override
  List<HistoryMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'HistoryResponse(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryResponseImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of HistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryResponseImplCopyWith<_$HistoryResponseImpl> get copyWith =>
      __$$HistoryResponseImplCopyWithImpl<_$HistoryResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryResponseImplToJson(this);
  }
}

abstract class _HistoryResponse implements HistoryResponse {
  const factory _HistoryResponse({
    required final List<HistoryMessage> messages,
  }) = _$HistoryResponseImpl;

  factory _HistoryResponse.fromJson(Map<String, dynamic> json) =
      _$HistoryResponseImpl.fromJson;

  @override
  List<HistoryMessage> get messages;

  /// Create a copy of HistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryResponseImplCopyWith<_$HistoryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HistoryMessage _$HistoryMessageFromJson(Map<String, dynamic> json) {
  return _HistoryMessage.fromJson(json);
}

/// @nodoc
mixin _$HistoryMessage {
  String get role => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  /// Serializes this HistoryMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryMessageCopyWith<HistoryMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryMessageCopyWith<$Res> {
  factory $HistoryMessageCopyWith(
    HistoryMessage value,
    $Res Function(HistoryMessage) then,
  ) = _$HistoryMessageCopyWithImpl<$Res, HistoryMessage>;
  @useResult
  $Res call({String role, String message, String timestamp});
}

/// @nodoc
class _$HistoryMessageCopyWithImpl<$Res, $Val extends HistoryMessage>
    implements $HistoryMessageCopyWith<$Res> {
  _$HistoryMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryMessage
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
abstract class _$$HistoryMessageImplCopyWith<$Res>
    implements $HistoryMessageCopyWith<$Res> {
  factory _$$HistoryMessageImplCopyWith(
    _$HistoryMessageImpl value,
    $Res Function(_$HistoryMessageImpl) then,
  ) = __$$HistoryMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String message, String timestamp});
}

/// @nodoc
class __$$HistoryMessageImplCopyWithImpl<$Res>
    extends _$HistoryMessageCopyWithImpl<$Res, _$HistoryMessageImpl>
    implements _$$HistoryMessageImplCopyWith<$Res> {
  __$$HistoryMessageImplCopyWithImpl(
    _$HistoryMessageImpl _value,
    $Res Function(_$HistoryMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HistoryMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? message = null,
    Object? timestamp = null,
  }) {
    return _then(
      _$HistoryMessageImpl(
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
class _$HistoryMessageImpl implements _HistoryMessage {
  const _$HistoryMessageImpl({
    required this.role,
    required this.message,
    required this.timestamp,
  });

  factory _$HistoryMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryMessageImplFromJson(json);

  @override
  final String role;
  @override
  final String message;
  @override
  final String timestamp;

  @override
  String toString() {
    return 'HistoryMessage(role: $role, message: $message, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryMessageImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, message, timestamp);

  /// Create a copy of HistoryMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryMessageImplCopyWith<_$HistoryMessageImpl> get copyWith =>
      __$$HistoryMessageImplCopyWithImpl<_$HistoryMessageImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryMessageImplToJson(this);
  }
}

abstract class _HistoryMessage implements HistoryMessage {
  const factory _HistoryMessage({
    required final String role,
    required final String message,
    required final String timestamp,
  }) = _$HistoryMessageImpl;

  factory _HistoryMessage.fromJson(Map<String, dynamic> json) =
      _$HistoryMessageImpl.fromJson;

  @override
  String get role;
  @override
  String get message;
  @override
  String get timestamp;

  /// Create a copy of HistoryMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryMessageImplCopyWith<_$HistoryMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
