// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? chatID) initializeChat,
    required TResult Function(String? userMessage) sendMessage,
    required TResult Function() clearChat,
    required TResult Function(String? chatID) loadChatHistory,
    required TResult Function() clearMessagesOnLogout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? chatID)? initializeChat,
    TResult? Function(String? userMessage)? sendMessage,
    TResult? Function()? clearChat,
    TResult? Function(String? chatID)? loadChatHistory,
    TResult? Function()? clearMessagesOnLogout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? chatID)? initializeChat,
    TResult Function(String? userMessage)? sendMessage,
    TResult Function()? clearChat,
    TResult Function(String? chatID)? loadChatHistory,
    TResult Function()? clearMessagesOnLogout,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitializeChat value) initializeChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(_LoadChatHistory value) loadChatHistory,
    required TResult Function(_ClearMessagesOnLogout value)
    clearMessagesOnLogout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitializeChat value)? initializeChat,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ClearChat value)? clearChat,
    TResult? Function(_LoadChatHistory value)? loadChatHistory,
    TResult? Function(_ClearMessagesOnLogout value)? clearMessagesOnLogout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitializeChat value)? initializeChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(_LoadChatHistory value)? loadChatHistory,
    TResult Function(_ClearMessagesOnLogout value)? clearMessagesOnLogout,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
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
    extends _$ChatEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ChatEvent.started()';
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
    required TResult Function(String? chatID) initializeChat,
    required TResult Function(String? userMessage) sendMessage,
    required TResult Function() clearChat,
    required TResult Function(String? chatID) loadChatHistory,
    required TResult Function() clearMessagesOnLogout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? chatID)? initializeChat,
    TResult? Function(String? userMessage)? sendMessage,
    TResult? Function()? clearChat,
    TResult? Function(String? chatID)? loadChatHistory,
    TResult? Function()? clearMessagesOnLogout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? chatID)? initializeChat,
    TResult Function(String? userMessage)? sendMessage,
    TResult Function()? clearChat,
    TResult Function(String? chatID)? loadChatHistory,
    TResult Function()? clearMessagesOnLogout,
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
    required TResult Function(_InitializeChat value) initializeChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(_LoadChatHistory value) loadChatHistory,
    required TResult Function(_ClearMessagesOnLogout value)
    clearMessagesOnLogout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitializeChat value)? initializeChat,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ClearChat value)? clearChat,
    TResult? Function(_LoadChatHistory value)? loadChatHistory,
    TResult? Function(_ClearMessagesOnLogout value)? clearMessagesOnLogout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitializeChat value)? initializeChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(_LoadChatHistory value)? loadChatHistory,
    TResult Function(_ClearMessagesOnLogout value)? clearMessagesOnLogout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$InitializeChatImplCopyWith<$Res> {
  factory _$$InitializeChatImplCopyWith(
    _$InitializeChatImpl value,
    $Res Function(_$InitializeChatImpl) then,
  ) = __$$InitializeChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? chatID});
}

/// @nodoc
class __$$InitializeChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$InitializeChatImpl>
    implements _$$InitializeChatImplCopyWith<$Res> {
  __$$InitializeChatImplCopyWithImpl(
    _$InitializeChatImpl _value,
    $Res Function(_$InitializeChatImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chatID = freezed}) {
    return _then(
      _$InitializeChatImpl(
        chatID: freezed == chatID
            ? _value.chatID
            : chatID // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$InitializeChatImpl implements _InitializeChat {
  const _$InitializeChatImpl({required this.chatID});

  @override
  final String? chatID;

  @override
  String toString() {
    return 'ChatEvent.initializeChat(chatID: $chatID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeChatImpl &&
            (identical(other.chatID, chatID) || other.chatID == chatID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatID);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeChatImplCopyWith<_$InitializeChatImpl> get copyWith =>
      __$$InitializeChatImplCopyWithImpl<_$InitializeChatImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? chatID) initializeChat,
    required TResult Function(String? userMessage) sendMessage,
    required TResult Function() clearChat,
    required TResult Function(String? chatID) loadChatHistory,
    required TResult Function() clearMessagesOnLogout,
  }) {
    return initializeChat(chatID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? chatID)? initializeChat,
    TResult? Function(String? userMessage)? sendMessage,
    TResult? Function()? clearChat,
    TResult? Function(String? chatID)? loadChatHistory,
    TResult? Function()? clearMessagesOnLogout,
  }) {
    return initializeChat?.call(chatID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? chatID)? initializeChat,
    TResult Function(String? userMessage)? sendMessage,
    TResult Function()? clearChat,
    TResult Function(String? chatID)? loadChatHistory,
    TResult Function()? clearMessagesOnLogout,
    required TResult orElse(),
  }) {
    if (initializeChat != null) {
      return initializeChat(chatID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitializeChat value) initializeChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(_LoadChatHistory value) loadChatHistory,
    required TResult Function(_ClearMessagesOnLogout value)
    clearMessagesOnLogout,
  }) {
    return initializeChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitializeChat value)? initializeChat,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ClearChat value)? clearChat,
    TResult? Function(_LoadChatHistory value)? loadChatHistory,
    TResult? Function(_ClearMessagesOnLogout value)? clearMessagesOnLogout,
  }) {
    return initializeChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitializeChat value)? initializeChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(_LoadChatHistory value)? loadChatHistory,
    TResult Function(_ClearMessagesOnLogout value)? clearMessagesOnLogout,
    required TResult orElse(),
  }) {
    if (initializeChat != null) {
      return initializeChat(this);
    }
    return orElse();
  }
}

abstract class _InitializeChat implements ChatEvent {
  const factory _InitializeChat({required final String? chatID}) =
      _$InitializeChatImpl;

  String? get chatID;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeChatImplCopyWith<_$InitializeChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
    _$SendMessageImpl value,
    $Res Function(_$SendMessageImpl) then,
  ) = __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? userMessage});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
    _$SendMessageImpl _value,
    $Res Function(_$SendMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userMessage = freezed}) {
    return _then(
      _$SendMessageImpl(
        userMessage: freezed == userMessage
            ? _value.userMessage
            : userMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl({required this.userMessage});

  @override
  final String? userMessage;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(userMessage: $userMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.userMessage, userMessage) ||
                other.userMessage == userMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userMessage);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? chatID) initializeChat,
    required TResult Function(String? userMessage) sendMessage,
    required TResult Function() clearChat,
    required TResult Function(String? chatID) loadChatHistory,
    required TResult Function() clearMessagesOnLogout,
  }) {
    return sendMessage(userMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? chatID)? initializeChat,
    TResult? Function(String? userMessage)? sendMessage,
    TResult? Function()? clearChat,
    TResult? Function(String? chatID)? loadChatHistory,
    TResult? Function()? clearMessagesOnLogout,
  }) {
    return sendMessage?.call(userMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? chatID)? initializeChat,
    TResult Function(String? userMessage)? sendMessage,
    TResult Function()? clearChat,
    TResult Function(String? chatID)? loadChatHistory,
    TResult Function()? clearMessagesOnLogout,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(userMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitializeChat value) initializeChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(_LoadChatHistory value) loadChatHistory,
    required TResult Function(_ClearMessagesOnLogout value)
    clearMessagesOnLogout,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitializeChat value)? initializeChat,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ClearChat value)? clearChat,
    TResult? Function(_LoadChatHistory value)? loadChatHistory,
    TResult? Function(_ClearMessagesOnLogout value)? clearMessagesOnLogout,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitializeChat value)? initializeChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(_LoadChatHistory value)? loadChatHistory,
    TResult Function(_ClearMessagesOnLogout value)? clearMessagesOnLogout,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage({required final String? userMessage}) =
      _$SendMessageImpl;

  String? get userMessage;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearChatImplCopyWith<$Res> {
  factory _$$ClearChatImplCopyWith(
    _$ClearChatImpl value,
    $Res Function(_$ClearChatImpl) then,
  ) = __$$ClearChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ClearChatImpl>
    implements _$$ClearChatImplCopyWith<$Res> {
  __$$ClearChatImplCopyWithImpl(
    _$ClearChatImpl _value,
    $Res Function(_$ClearChatImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearChatImpl implements _ClearChat {
  const _$ClearChatImpl();

  @override
  String toString() {
    return 'ChatEvent.clearChat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearChatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? chatID) initializeChat,
    required TResult Function(String? userMessage) sendMessage,
    required TResult Function() clearChat,
    required TResult Function(String? chatID) loadChatHistory,
    required TResult Function() clearMessagesOnLogout,
  }) {
    return clearChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? chatID)? initializeChat,
    TResult? Function(String? userMessage)? sendMessage,
    TResult? Function()? clearChat,
    TResult? Function(String? chatID)? loadChatHistory,
    TResult? Function()? clearMessagesOnLogout,
  }) {
    return clearChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? chatID)? initializeChat,
    TResult Function(String? userMessage)? sendMessage,
    TResult Function()? clearChat,
    TResult Function(String? chatID)? loadChatHistory,
    TResult Function()? clearMessagesOnLogout,
    required TResult orElse(),
  }) {
    if (clearChat != null) {
      return clearChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitializeChat value) initializeChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(_LoadChatHistory value) loadChatHistory,
    required TResult Function(_ClearMessagesOnLogout value)
    clearMessagesOnLogout,
  }) {
    return clearChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitializeChat value)? initializeChat,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ClearChat value)? clearChat,
    TResult? Function(_LoadChatHistory value)? loadChatHistory,
    TResult? Function(_ClearMessagesOnLogout value)? clearMessagesOnLogout,
  }) {
    return clearChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitializeChat value)? initializeChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(_LoadChatHistory value)? loadChatHistory,
    TResult Function(_ClearMessagesOnLogout value)? clearMessagesOnLogout,
    required TResult orElse(),
  }) {
    if (clearChat != null) {
      return clearChat(this);
    }
    return orElse();
  }
}

abstract class _ClearChat implements ChatEvent {
  const factory _ClearChat() = _$ClearChatImpl;
}

/// @nodoc
abstract class _$$LoadChatHistoryImplCopyWith<$Res> {
  factory _$$LoadChatHistoryImplCopyWith(
    _$LoadChatHistoryImpl value,
    $Res Function(_$LoadChatHistoryImpl) then,
  ) = __$$LoadChatHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? chatID});
}

/// @nodoc
class __$$LoadChatHistoryImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$LoadChatHistoryImpl>
    implements _$$LoadChatHistoryImplCopyWith<$Res> {
  __$$LoadChatHistoryImplCopyWithImpl(
    _$LoadChatHistoryImpl _value,
    $Res Function(_$LoadChatHistoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chatID = freezed}) {
    return _then(
      _$LoadChatHistoryImpl(
        chatID: freezed == chatID
            ? _value.chatID
            : chatID // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$LoadChatHistoryImpl implements _LoadChatHistory {
  const _$LoadChatHistoryImpl({required this.chatID});

  @override
  final String? chatID;

  @override
  String toString() {
    return 'ChatEvent.loadChatHistory(chatID: $chatID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadChatHistoryImpl &&
            (identical(other.chatID, chatID) || other.chatID == chatID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatID);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadChatHistoryImplCopyWith<_$LoadChatHistoryImpl> get copyWith =>
      __$$LoadChatHistoryImplCopyWithImpl<_$LoadChatHistoryImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? chatID) initializeChat,
    required TResult Function(String? userMessage) sendMessage,
    required TResult Function() clearChat,
    required TResult Function(String? chatID) loadChatHistory,
    required TResult Function() clearMessagesOnLogout,
  }) {
    return loadChatHistory(chatID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? chatID)? initializeChat,
    TResult? Function(String? userMessage)? sendMessage,
    TResult? Function()? clearChat,
    TResult? Function(String? chatID)? loadChatHistory,
    TResult? Function()? clearMessagesOnLogout,
  }) {
    return loadChatHistory?.call(chatID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? chatID)? initializeChat,
    TResult Function(String? userMessage)? sendMessage,
    TResult Function()? clearChat,
    TResult Function(String? chatID)? loadChatHistory,
    TResult Function()? clearMessagesOnLogout,
    required TResult orElse(),
  }) {
    if (loadChatHistory != null) {
      return loadChatHistory(chatID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitializeChat value) initializeChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(_LoadChatHistory value) loadChatHistory,
    required TResult Function(_ClearMessagesOnLogout value)
    clearMessagesOnLogout,
  }) {
    return loadChatHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitializeChat value)? initializeChat,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ClearChat value)? clearChat,
    TResult? Function(_LoadChatHistory value)? loadChatHistory,
    TResult? Function(_ClearMessagesOnLogout value)? clearMessagesOnLogout,
  }) {
    return loadChatHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitializeChat value)? initializeChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(_LoadChatHistory value)? loadChatHistory,
    TResult Function(_ClearMessagesOnLogout value)? clearMessagesOnLogout,
    required TResult orElse(),
  }) {
    if (loadChatHistory != null) {
      return loadChatHistory(this);
    }
    return orElse();
  }
}

abstract class _LoadChatHistory implements ChatEvent {
  const factory _LoadChatHistory({required final String? chatID}) =
      _$LoadChatHistoryImpl;

  String? get chatID;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadChatHistoryImplCopyWith<_$LoadChatHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearMessagesOnLogoutImplCopyWith<$Res> {
  factory _$$ClearMessagesOnLogoutImplCopyWith(
    _$ClearMessagesOnLogoutImpl value,
    $Res Function(_$ClearMessagesOnLogoutImpl) then,
  ) = __$$ClearMessagesOnLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearMessagesOnLogoutImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ClearMessagesOnLogoutImpl>
    implements _$$ClearMessagesOnLogoutImplCopyWith<$Res> {
  __$$ClearMessagesOnLogoutImplCopyWithImpl(
    _$ClearMessagesOnLogoutImpl _value,
    $Res Function(_$ClearMessagesOnLogoutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearMessagesOnLogoutImpl implements _ClearMessagesOnLogout {
  const _$ClearMessagesOnLogoutImpl();

  @override
  String toString() {
    return 'ChatEvent.clearMessagesOnLogout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearMessagesOnLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? chatID) initializeChat,
    required TResult Function(String? userMessage) sendMessage,
    required TResult Function() clearChat,
    required TResult Function(String? chatID) loadChatHistory,
    required TResult Function() clearMessagesOnLogout,
  }) {
    return clearMessagesOnLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? chatID)? initializeChat,
    TResult? Function(String? userMessage)? sendMessage,
    TResult? Function()? clearChat,
    TResult? Function(String? chatID)? loadChatHistory,
    TResult? Function()? clearMessagesOnLogout,
  }) {
    return clearMessagesOnLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? chatID)? initializeChat,
    TResult Function(String? userMessage)? sendMessage,
    TResult Function()? clearChat,
    TResult Function(String? chatID)? loadChatHistory,
    TResult Function()? clearMessagesOnLogout,
    required TResult orElse(),
  }) {
    if (clearMessagesOnLogout != null) {
      return clearMessagesOnLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitializeChat value) initializeChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(_LoadChatHistory value) loadChatHistory,
    required TResult Function(_ClearMessagesOnLogout value)
    clearMessagesOnLogout,
  }) {
    return clearMessagesOnLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitializeChat value)? initializeChat,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ClearChat value)? clearChat,
    TResult? Function(_LoadChatHistory value)? loadChatHistory,
    TResult? Function(_ClearMessagesOnLogout value)? clearMessagesOnLogout,
  }) {
    return clearMessagesOnLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitializeChat value)? initializeChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(_LoadChatHistory value)? loadChatHistory,
    TResult Function(_ClearMessagesOnLogout value)? clearMessagesOnLogout,
    required TResult orElse(),
  }) {
    if (clearMessagesOnLogout != null) {
      return clearMessagesOnLogout(this);
    }
    return orElse();
  }
}

abstract class _ClearMessagesOnLogout implements ChatEvent {
  const factory _ClearMessagesOnLogout() = _$ClearMessagesOnLogoutImpl;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatMessage> messages) typing,
    required TResult Function(List<ChatMessage> messages) success,
    required TResult Function(String? message) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatMessage> messages)? typing,
    TResult? Function(List<ChatMessage> messages)? success,
    TResult? Function(String? message)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatMessage> messages)? typing,
    TResult Function(List<ChatMessage> messages)? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Typing value) typing,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Typing value)? typing,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Typing value)? typing,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
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
    extends _$ChatStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatState.initial()';
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
    required TResult Function(List<ChatMessage> messages) typing,
    required TResult Function(List<ChatMessage> messages) success,
    required TResult Function(String? message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatMessage> messages)? typing,
    TResult? Function(List<ChatMessage> messages)? success,
    TResult? Function(String? message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatMessage> messages)? typing,
    TResult Function(List<ChatMessage> messages)? success,
    TResult Function(String? message)? failure,
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
    required TResult Function(_Typing value) typing,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Typing value)? typing,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Typing value)? typing,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatState {
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
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ChatState.loading()';
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
    required TResult Function(List<ChatMessage> messages) typing,
    required TResult Function(List<ChatMessage> messages) success,
    required TResult Function(String? message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatMessage> messages)? typing,
    TResult? Function(List<ChatMessage> messages)? success,
    TResult? Function(String? message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatMessage> messages)? typing,
    TResult Function(List<ChatMessage> messages)? success,
    TResult Function(String? message)? failure,
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
    required TResult Function(_Typing value) typing,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Typing value)? typing,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Typing value)? typing,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$TypingImplCopyWith<$Res> {
  factory _$$TypingImplCopyWith(
    _$TypingImpl value,
    $Res Function(_$TypingImpl) then,
  ) = __$$TypingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatMessage> messages});
}

/// @nodoc
class __$$TypingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$TypingImpl>
    implements _$$TypingImplCopyWith<$Res> {
  __$$TypingImplCopyWithImpl(
    _$TypingImpl _value,
    $Res Function(_$TypingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _$TypingImpl(
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<ChatMessage>,
      ),
    );
  }
}

/// @nodoc

class _$TypingImpl implements _Typing {
  const _$TypingImpl({required final List<ChatMessage> messages})
    : _messages = messages;

  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.typing(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypingImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypingImplCopyWith<_$TypingImpl> get copyWith =>
      __$$TypingImplCopyWithImpl<_$TypingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatMessage> messages) typing,
    required TResult Function(List<ChatMessage> messages) success,
    required TResult Function(String? message) failure,
  }) {
    return typing(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatMessage> messages)? typing,
    TResult? Function(List<ChatMessage> messages)? success,
    TResult? Function(String? message)? failure,
  }) {
    return typing?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatMessage> messages)? typing,
    TResult Function(List<ChatMessage> messages)? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (typing != null) {
      return typing(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Typing value) typing,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return typing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Typing value)? typing,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return typing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Typing value)? typing,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (typing != null) {
      return typing(this);
    }
    return orElse();
  }
}

abstract class _Typing implements ChatState {
  const factory _Typing({required final List<ChatMessage> messages}) =
      _$TypingImpl;

  List<ChatMessage> get messages;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypingImplCopyWith<_$TypingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatMessage> messages});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _$SuccessImpl(
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<ChatMessage>,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required final List<ChatMessage> messages})
    : _messages = messages;

  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.success(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatState
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
    required TResult Function(List<ChatMessage> messages) typing,
    required TResult Function(List<ChatMessage> messages) success,
    required TResult Function(String? message) failure,
  }) {
    return success(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatMessage> messages)? typing,
    TResult? Function(List<ChatMessage> messages)? success,
    TResult? Function(String? message)? failure,
  }) {
    return success?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatMessage> messages)? typing,
    TResult Function(List<ChatMessage> messages)? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Typing value) typing,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Typing value)? typing,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Typing value)? typing,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ChatState {
  const factory _Success({required final List<ChatMessage> messages}) =
      _$SuccessImpl;

  List<ChatMessage> get messages;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
    _$FailureImpl value,
    $Res Function(_$FailureImpl) then,
  ) = __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
    _$FailureImpl _value,
    $Res Function(_$FailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$FailureImpl(
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ChatState.failure(message: $message)';
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

  /// Create a copy of ChatState
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
    required TResult Function(List<ChatMessage> messages) typing,
    required TResult Function(List<ChatMessage> messages) success,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatMessage> messages)? typing,
    TResult? Function(List<ChatMessage> messages)? success,
    TResult? Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatMessage> messages)? typing,
    TResult Function(List<ChatMessage> messages)? success,
    TResult Function(String? message)? failure,
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
    required TResult Function(_Typing value) typing,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Typing value)? typing,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Typing value)? typing,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ChatState {
  const factory _Failure({required final String? message}) = _$FailureImpl;

  String? get message;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
