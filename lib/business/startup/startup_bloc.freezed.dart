// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'startup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StartupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? jwt, String? refreshToken)
    checkJwtValidity,
    required TResult Function(String? refreshToken) refreshToken,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? jwt, String? refreshToken)? checkJwtValidity,
    TResult? Function(String? refreshToken)? refreshToken,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? jwt, String? refreshToken)? checkJwtValidity,
    TResult Function(String? refreshToken)? refreshToken,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CheckValidity value) checkJwtValidity,
    required TResult Function(_RefreshToken value) refreshToken,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CheckValidity value)? checkJwtValidity,
    TResult? Function(_RefreshToken value)? refreshToken,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckValidity value)? checkJwtValidity,
    TResult Function(_RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartupEventCopyWith<$Res> {
  factory $StartupEventCopyWith(
    StartupEvent value,
    $Res Function(StartupEvent) then,
  ) = _$StartupEventCopyWithImpl<$Res, StartupEvent>;
}

/// @nodoc
class _$StartupEventCopyWithImpl<$Res, $Val extends StartupEvent>
    implements $StartupEventCopyWith<$Res> {
  _$StartupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartupEvent
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
    extends _$StartupEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StartupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'StartupEvent.started()';
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
    required TResult Function(String? jwt, String? refreshToken)
    checkJwtValidity,
    required TResult Function(String? refreshToken) refreshToken,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? jwt, String? refreshToken)? checkJwtValidity,
    TResult? Function(String? refreshToken)? refreshToken,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? jwt, String? refreshToken)? checkJwtValidity,
    TResult Function(String? refreshToken)? refreshToken,
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
    required TResult Function(_CheckValidity value) checkJwtValidity,
    required TResult Function(_RefreshToken value) refreshToken,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CheckValidity value)? checkJwtValidity,
    TResult? Function(_RefreshToken value)? refreshToken,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckValidity value)? checkJwtValidity,
    TResult Function(_RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements StartupEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CheckValidityImplCopyWith<$Res> {
  factory _$$CheckValidityImplCopyWith(
    _$CheckValidityImpl value,
    $Res Function(_$CheckValidityImpl) then,
  ) = __$$CheckValidityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? jwt, String? refreshToken});
}

/// @nodoc
class __$$CheckValidityImplCopyWithImpl<$Res>
    extends _$StartupEventCopyWithImpl<$Res, _$CheckValidityImpl>
    implements _$$CheckValidityImplCopyWith<$Res> {
  __$$CheckValidityImplCopyWithImpl(
    _$CheckValidityImpl _value,
    $Res Function(_$CheckValidityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StartupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? jwt = freezed, Object? refreshToken = freezed}) {
    return _then(
      _$CheckValidityImpl(
        jwt: freezed == jwt
            ? _value.jwt
            : jwt // ignore: cast_nullable_to_non_nullable
                  as String?,
        refreshToken: freezed == refreshToken
            ? _value.refreshToken
            : refreshToken // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$CheckValidityImpl implements _CheckValidity {
  const _$CheckValidityImpl({required this.jwt, required this.refreshToken});

  @override
  final String? jwt;
  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'StartupEvent.checkJwtValidity(jwt: $jwt, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckValidityImpl &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, jwt, refreshToken);

  /// Create a copy of StartupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckValidityImplCopyWith<_$CheckValidityImpl> get copyWith =>
      __$$CheckValidityImplCopyWithImpl<_$CheckValidityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? jwt, String? refreshToken)
    checkJwtValidity,
    required TResult Function(String? refreshToken) refreshToken,
  }) {
    return checkJwtValidity(jwt, this.refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? jwt, String? refreshToken)? checkJwtValidity,
    TResult? Function(String? refreshToken)? refreshToken,
  }) {
    return checkJwtValidity?.call(jwt, this.refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? jwt, String? refreshToken)? checkJwtValidity,
    TResult Function(String? refreshToken)? refreshToken,
    required TResult orElse(),
  }) {
    if (checkJwtValidity != null) {
      return checkJwtValidity(jwt, this.refreshToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CheckValidity value) checkJwtValidity,
    required TResult Function(_RefreshToken value) refreshToken,
  }) {
    return checkJwtValidity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CheckValidity value)? checkJwtValidity,
    TResult? Function(_RefreshToken value)? refreshToken,
  }) {
    return checkJwtValidity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckValidity value)? checkJwtValidity,
    TResult Function(_RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (checkJwtValidity != null) {
      return checkJwtValidity(this);
    }
    return orElse();
  }
}

abstract class _CheckValidity implements StartupEvent {
  const factory _CheckValidity({
    required final String? jwt,
    required final String? refreshToken,
  }) = _$CheckValidityImpl;

  String? get jwt;
  String? get refreshToken;

  /// Create a copy of StartupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckValidityImplCopyWith<_$CheckValidityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshTokenImplCopyWith<$Res> {
  factory _$$RefreshTokenImplCopyWith(
    _$RefreshTokenImpl value,
    $Res Function(_$RefreshTokenImpl) then,
  ) = __$$RefreshTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? refreshToken});
}

/// @nodoc
class __$$RefreshTokenImplCopyWithImpl<$Res>
    extends _$StartupEventCopyWithImpl<$Res, _$RefreshTokenImpl>
    implements _$$RefreshTokenImplCopyWith<$Res> {
  __$$RefreshTokenImplCopyWithImpl(
    _$RefreshTokenImpl _value,
    $Res Function(_$RefreshTokenImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StartupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? refreshToken = freezed}) {
    return _then(
      _$RefreshTokenImpl(
        refreshToken: freezed == refreshToken
            ? _value.refreshToken
            : refreshToken // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$RefreshTokenImpl implements _RefreshToken {
  const _$RefreshTokenImpl({required this.refreshToken});

  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'StartupEvent.refreshToken(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  /// Create a copy of StartupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenImplCopyWith<_$RefreshTokenImpl> get copyWith =>
      __$$RefreshTokenImplCopyWithImpl<_$RefreshTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? jwt, String? refreshToken)
    checkJwtValidity,
    required TResult Function(String? refreshToken) refreshToken,
  }) {
    return refreshToken(this.refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? jwt, String? refreshToken)? checkJwtValidity,
    TResult? Function(String? refreshToken)? refreshToken,
  }) {
    return refreshToken?.call(this.refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? jwt, String? refreshToken)? checkJwtValidity,
    TResult Function(String? refreshToken)? refreshToken,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(this.refreshToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CheckValidity value) checkJwtValidity,
    required TResult Function(_RefreshToken value) refreshToken,
  }) {
    return refreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CheckValidity value)? checkJwtValidity,
    TResult? Function(_RefreshToken value)? refreshToken,
  }) {
    return refreshToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckValidity value)? checkJwtValidity,
    TResult Function(_RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(this);
    }
    return orElse();
  }
}

abstract class _RefreshToken implements StartupEvent {
  const factory _RefreshToken({required final String? refreshToken}) =
      _$RefreshTokenImpl;

  String? get refreshToken;

  /// Create a copy of StartupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshTokenImplCopyWith<_$RefreshTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StartupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function() freshUser,
    required TResult Function(User? user) validUser,
    required TResult Function(String msg) loggedOutUser,
    required TResult Function(String message) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function()? freshUser,
    TResult? Function(User? user)? validUser,
    TResult? Function(String msg)? loggedOutUser,
    TResult? Function(String message)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? freshUser,
    TResult Function(User? user)? validUser,
    TResult Function(String msg)? loggedOutUser,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_FreshUser value) freshUser,
    required TResult Function(_ValidUser value) validUser,
    required TResult Function(_LoggedOutUser value) loggedOutUser,
    required TResult Function(_Failure value) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_FreshUser value)? freshUser,
    TResult? Function(_ValidUser value)? validUser,
    TResult? Function(_LoggedOutUser value)? loggedOutUser,
    TResult? Function(_Failure value)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_FreshUser value)? freshUser,
    TResult Function(_ValidUser value)? validUser,
    TResult Function(_LoggedOutUser value)? loggedOutUser,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartupStateCopyWith<$Res> {
  factory $StartupStateCopyWith(
    StartupState value,
    $Res Function(StartupState) then,
  ) = _$StartupStateCopyWithImpl<$Res, StartupState>;
}

/// @nodoc
class _$StartupStateCopyWithImpl<$Res, $Val extends StartupState>
    implements $StartupStateCopyWith<$Res> {
  _$StartupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartupState
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
    extends _$StartupStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'StartupState.initial()';
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
    required TResult Function() processing,
    required TResult Function() freshUser,
    required TResult Function(User? user) validUser,
    required TResult Function(String msg) loggedOutUser,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function()? freshUser,
    TResult? Function(User? user)? validUser,
    TResult? Function(String msg)? loggedOutUser,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? freshUser,
    TResult Function(User? user)? validUser,
    TResult Function(String msg)? loggedOutUser,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_FreshUser value) freshUser,
    required TResult Function(_ValidUser value) validUser,
    required TResult Function(_LoggedOutUser value) loggedOutUser,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_FreshUser value)? freshUser,
    TResult? Function(_ValidUser value)? validUser,
    TResult? Function(_LoggedOutUser value)? loggedOutUser,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_FreshUser value)? freshUser,
    TResult Function(_ValidUser value)? validUser,
    TResult Function(_LoggedOutUser value)? loggedOutUser,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StartupState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ProcessingImplCopyWith<$Res> {
  factory _$$ProcessingImplCopyWith(
    _$ProcessingImpl value,
    $Res Function(_$ProcessingImpl) then,
  ) = __$$ProcessingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessingImplCopyWithImpl<$Res>
    extends _$StartupStateCopyWithImpl<$Res, _$ProcessingImpl>
    implements _$$ProcessingImplCopyWith<$Res> {
  __$$ProcessingImplCopyWithImpl(
    _$ProcessingImpl _value,
    $Res Function(_$ProcessingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProcessingImpl implements _Processing {
  const _$ProcessingImpl();

  @override
  String toString() {
    return 'StartupState.processing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function() freshUser,
    required TResult Function(User? user) validUser,
    required TResult Function(String msg) loggedOutUser,
    required TResult Function(String message) failure,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function()? freshUser,
    TResult? Function(User? user)? validUser,
    TResult? Function(String msg)? loggedOutUser,
    TResult? Function(String message)? failure,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? freshUser,
    TResult Function(User? user)? validUser,
    TResult Function(String msg)? loggedOutUser,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_FreshUser value) freshUser,
    required TResult Function(_ValidUser value) validUser,
    required TResult Function(_LoggedOutUser value) loggedOutUser,
    required TResult Function(_Failure value) failure,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_FreshUser value)? freshUser,
    TResult? Function(_ValidUser value)? validUser,
    TResult? Function(_LoggedOutUser value)? loggedOutUser,
    TResult? Function(_Failure value)? failure,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_FreshUser value)? freshUser,
    TResult Function(_ValidUser value)? validUser,
    TResult Function(_LoggedOutUser value)? loggedOutUser,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _Processing implements StartupState {
  const factory _Processing() = _$ProcessingImpl;
}

/// @nodoc
abstract class _$$FreshUserImplCopyWith<$Res> {
  factory _$$FreshUserImplCopyWith(
    _$FreshUserImpl value,
    $Res Function(_$FreshUserImpl) then,
  ) = __$$FreshUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FreshUserImplCopyWithImpl<$Res>
    extends _$StartupStateCopyWithImpl<$Res, _$FreshUserImpl>
    implements _$$FreshUserImplCopyWith<$Res> {
  __$$FreshUserImplCopyWithImpl(
    _$FreshUserImpl _value,
    $Res Function(_$FreshUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FreshUserImpl implements _FreshUser {
  const _$FreshUserImpl();

  @override
  String toString() {
    return 'StartupState.freshUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FreshUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function() freshUser,
    required TResult Function(User? user) validUser,
    required TResult Function(String msg) loggedOutUser,
    required TResult Function(String message) failure,
  }) {
    return freshUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function()? freshUser,
    TResult? Function(User? user)? validUser,
    TResult? Function(String msg)? loggedOutUser,
    TResult? Function(String message)? failure,
  }) {
    return freshUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? freshUser,
    TResult Function(User? user)? validUser,
    TResult Function(String msg)? loggedOutUser,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (freshUser != null) {
      return freshUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_FreshUser value) freshUser,
    required TResult Function(_ValidUser value) validUser,
    required TResult Function(_LoggedOutUser value) loggedOutUser,
    required TResult Function(_Failure value) failure,
  }) {
    return freshUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_FreshUser value)? freshUser,
    TResult? Function(_ValidUser value)? validUser,
    TResult? Function(_LoggedOutUser value)? loggedOutUser,
    TResult? Function(_Failure value)? failure,
  }) {
    return freshUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_FreshUser value)? freshUser,
    TResult Function(_ValidUser value)? validUser,
    TResult Function(_LoggedOutUser value)? loggedOutUser,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (freshUser != null) {
      return freshUser(this);
    }
    return orElse();
  }
}

abstract class _FreshUser implements StartupState {
  const factory _FreshUser() = _$FreshUserImpl;
}

/// @nodoc
abstract class _$$ValidUserImplCopyWith<$Res> {
  factory _$$ValidUserImplCopyWith(
    _$ValidUserImpl value,
    $Res Function(_$ValidUserImpl) then,
  ) = __$$ValidUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ValidUserImplCopyWithImpl<$Res>
    extends _$StartupStateCopyWithImpl<$Res, _$ValidUserImpl>
    implements _$$ValidUserImplCopyWith<$Res> {
  __$$ValidUserImplCopyWithImpl(
    _$ValidUserImpl _value,
    $Res Function(_$ValidUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = freezed}) {
    return _then(
      _$ValidUserImpl(
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
      ),
    );
  }

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$ValidUserImpl implements _ValidUser {
  const _$ValidUserImpl({required this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'StartupState.validUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidUserImplCopyWith<_$ValidUserImpl> get copyWith =>
      __$$ValidUserImplCopyWithImpl<_$ValidUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function() freshUser,
    required TResult Function(User? user) validUser,
    required TResult Function(String msg) loggedOutUser,
    required TResult Function(String message) failure,
  }) {
    return validUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function()? freshUser,
    TResult? Function(User? user)? validUser,
    TResult? Function(String msg)? loggedOutUser,
    TResult? Function(String message)? failure,
  }) {
    return validUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? freshUser,
    TResult Function(User? user)? validUser,
    TResult Function(String msg)? loggedOutUser,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (validUser != null) {
      return validUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_FreshUser value) freshUser,
    required TResult Function(_ValidUser value) validUser,
    required TResult Function(_LoggedOutUser value) loggedOutUser,
    required TResult Function(_Failure value) failure,
  }) {
    return validUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_FreshUser value)? freshUser,
    TResult? Function(_ValidUser value)? validUser,
    TResult? Function(_LoggedOutUser value)? loggedOutUser,
    TResult? Function(_Failure value)? failure,
  }) {
    return validUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_FreshUser value)? freshUser,
    TResult Function(_ValidUser value)? validUser,
    TResult Function(_LoggedOutUser value)? loggedOutUser,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (validUser != null) {
      return validUser(this);
    }
    return orElse();
  }
}

abstract class _ValidUser implements StartupState {
  const factory _ValidUser({required final User? user}) = _$ValidUserImpl;

  User? get user;

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidUserImplCopyWith<_$ValidUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedOutUserImplCopyWith<$Res> {
  factory _$$LoggedOutUserImplCopyWith(
    _$LoggedOutUserImpl value,
    $Res Function(_$LoggedOutUserImpl) then,
  ) = __$$LoggedOutUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$LoggedOutUserImplCopyWithImpl<$Res>
    extends _$StartupStateCopyWithImpl<$Res, _$LoggedOutUserImpl>
    implements _$$LoggedOutUserImplCopyWith<$Res> {
  __$$LoggedOutUserImplCopyWithImpl(
    _$LoggedOutUserImpl _value,
    $Res Function(_$LoggedOutUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? msg = null}) {
    return _then(
      _$LoggedOutUserImpl(
        msg: null == msg
            ? _value.msg
            : msg // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LoggedOutUserImpl implements _LoggedOutUser {
  const _$LoggedOutUserImpl({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'StartupState.loggedOutUser(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedOutUserImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedOutUserImplCopyWith<_$LoggedOutUserImpl> get copyWith =>
      __$$LoggedOutUserImplCopyWithImpl<_$LoggedOutUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function() freshUser,
    required TResult Function(User? user) validUser,
    required TResult Function(String msg) loggedOutUser,
    required TResult Function(String message) failure,
  }) {
    return loggedOutUser(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function()? freshUser,
    TResult? Function(User? user)? validUser,
    TResult? Function(String msg)? loggedOutUser,
    TResult? Function(String message)? failure,
  }) {
    return loggedOutUser?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? freshUser,
    TResult Function(User? user)? validUser,
    TResult Function(String msg)? loggedOutUser,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loggedOutUser != null) {
      return loggedOutUser(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_FreshUser value) freshUser,
    required TResult Function(_ValidUser value) validUser,
    required TResult Function(_LoggedOutUser value) loggedOutUser,
    required TResult Function(_Failure value) failure,
  }) {
    return loggedOutUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_FreshUser value)? freshUser,
    TResult? Function(_ValidUser value)? validUser,
    TResult? Function(_LoggedOutUser value)? loggedOutUser,
    TResult? Function(_Failure value)? failure,
  }) {
    return loggedOutUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_FreshUser value)? freshUser,
    TResult Function(_ValidUser value)? validUser,
    TResult Function(_LoggedOutUser value)? loggedOutUser,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loggedOutUser != null) {
      return loggedOutUser(this);
    }
    return orElse();
  }
}

abstract class _LoggedOutUser implements StartupState {
  const factory _LoggedOutUser({required final String msg}) =
      _$LoggedOutUserImpl;

  String get msg;

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoggedOutUserImplCopyWith<_$LoggedOutUserImpl> get copyWith =>
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
    extends _$StartupStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
    _$FailureImpl _value,
    $Res Function(_$FailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StartupState
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
    return 'StartupState.failure(message: $message)';
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

  /// Create a copy of StartupState
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
    required TResult Function() processing,
    required TResult Function() freshUser,
    required TResult Function(User? user) validUser,
    required TResult Function(String msg) loggedOutUser,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function()? freshUser,
    TResult? Function(User? user)? validUser,
    TResult? Function(String msg)? loggedOutUser,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? freshUser,
    TResult Function(User? user)? validUser,
    TResult Function(String msg)? loggedOutUser,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_FreshUser value) freshUser,
    required TResult Function(_ValidUser value) validUser,
    required TResult Function(_LoggedOutUser value) loggedOutUser,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_FreshUser value)? freshUser,
    TResult? Function(_ValidUser value)? validUser,
    TResult? Function(_LoggedOutUser value)? loggedOutUser,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_FreshUser value)? freshUser,
    TResult Function(_ValidUser value)? validUser,
    TResult Function(_LoggedOutUser value)? loggedOutUser,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements StartupState {
  const factory _Failure({required final String message}) = _$FailureImpl;

  String get message;

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
