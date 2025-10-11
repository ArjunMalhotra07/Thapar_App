// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'venue_booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$VenueBookingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchVenues,
    required TResult Function(
      String? roomId,
      DateTime? startTime,
      DateTime? endTime,
    )
    bookVenue,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchVenues,
    TResult? Function(String? roomId, DateTime? startTime, DateTime? endTime)?
    bookVenue,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchVenues,
    TResult Function(String? roomId, DateTime? startTime, DateTime? endTime)?
    bookVenue,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchVenues value) fetchVenues,
    required TResult Function(_BookVenue value) bookVenue,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchVenues value)? fetchVenues,
    TResult? Function(_BookVenue value)? bookVenue,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchVenues value)? fetchVenues,
    TResult Function(_BookVenue value)? bookVenue,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VenueBookingEventCopyWith<$Res> {
  factory $VenueBookingEventCopyWith(
    VenueBookingEvent value,
    $Res Function(VenueBookingEvent) then,
  ) = _$VenueBookingEventCopyWithImpl<$Res, VenueBookingEvent>;
}

/// @nodoc
class _$VenueBookingEventCopyWithImpl<$Res, $Val extends VenueBookingEvent>
    implements $VenueBookingEventCopyWith<$Res> {
  _$VenueBookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchVenuesImplCopyWith<$Res> {
  factory _$$FetchVenuesImplCopyWith(
    _$FetchVenuesImpl value,
    $Res Function(_$FetchVenuesImpl) then,
  ) = __$$FetchVenuesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchVenuesImplCopyWithImpl<$Res>
    extends _$VenueBookingEventCopyWithImpl<$Res, _$FetchVenuesImpl>
    implements _$$FetchVenuesImplCopyWith<$Res> {
  __$$FetchVenuesImplCopyWithImpl(
    _$FetchVenuesImpl _value,
    $Res Function(_$FetchVenuesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchVenuesImpl implements _FetchVenues {
  const _$FetchVenuesImpl();

  @override
  String toString() {
    return 'VenueBookingEvent.fetchVenues()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchVenuesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchVenues,
    required TResult Function(
      String? roomId,
      DateTime? startTime,
      DateTime? endTime,
    )
    bookVenue,
  }) {
    return fetchVenues();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchVenues,
    TResult? Function(String? roomId, DateTime? startTime, DateTime? endTime)?
    bookVenue,
  }) {
    return fetchVenues?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchVenues,
    TResult Function(String? roomId, DateTime? startTime, DateTime? endTime)?
    bookVenue,
    required TResult orElse(),
  }) {
    if (fetchVenues != null) {
      return fetchVenues();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchVenues value) fetchVenues,
    required TResult Function(_BookVenue value) bookVenue,
  }) {
    return fetchVenues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchVenues value)? fetchVenues,
    TResult? Function(_BookVenue value)? bookVenue,
  }) {
    return fetchVenues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchVenues value)? fetchVenues,
    TResult Function(_BookVenue value)? bookVenue,
    required TResult orElse(),
  }) {
    if (fetchVenues != null) {
      return fetchVenues(this);
    }
    return orElse();
  }
}

abstract class _FetchVenues implements VenueBookingEvent {
  const factory _FetchVenues() = _$FetchVenuesImpl;
}

/// @nodoc
abstract class _$$BookVenueImplCopyWith<$Res> {
  factory _$$BookVenueImplCopyWith(
    _$BookVenueImpl value,
    $Res Function(_$BookVenueImpl) then,
  ) = __$$BookVenueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? roomId, DateTime? startTime, DateTime? endTime});
}

/// @nodoc
class __$$BookVenueImplCopyWithImpl<$Res>
    extends _$VenueBookingEventCopyWithImpl<$Res, _$BookVenueImpl>
    implements _$$BookVenueImplCopyWith<$Res> {
  __$$BookVenueImplCopyWithImpl(
    _$BookVenueImpl _value,
    $Res Function(_$BookVenueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(
      _$BookVenueImpl(
        roomId: freezed == roomId
            ? _value.roomId
            : roomId // ignore: cast_nullable_to_non_nullable
                  as String?,
        startTime: freezed == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        endTime: freezed == endTime
            ? _value.endTime
            : endTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$BookVenueImpl implements _BookVenue {
  const _$BookVenueImpl({
    required this.roomId,
    required this.startTime,
    required this.endTime,
  });

  @override
  final String? roomId;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;

  @override
  String toString() {
    return 'VenueBookingEvent.bookVenue(roomId: $roomId, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookVenueImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId, startTime, endTime);

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookVenueImplCopyWith<_$BookVenueImpl> get copyWith =>
      __$$BookVenueImplCopyWithImpl<_$BookVenueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchVenues,
    required TResult Function(
      String? roomId,
      DateTime? startTime,
      DateTime? endTime,
    )
    bookVenue,
  }) {
    return bookVenue(roomId, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchVenues,
    TResult? Function(String? roomId, DateTime? startTime, DateTime? endTime)?
    bookVenue,
  }) {
    return bookVenue?.call(roomId, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchVenues,
    TResult Function(String? roomId, DateTime? startTime, DateTime? endTime)?
    bookVenue,
    required TResult orElse(),
  }) {
    if (bookVenue != null) {
      return bookVenue(roomId, startTime, endTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchVenues value) fetchVenues,
    required TResult Function(_BookVenue value) bookVenue,
  }) {
    return bookVenue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchVenues value)? fetchVenues,
    TResult? Function(_BookVenue value)? bookVenue,
  }) {
    return bookVenue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchVenues value)? fetchVenues,
    TResult Function(_BookVenue value)? bookVenue,
    required TResult orElse(),
  }) {
    if (bookVenue != null) {
      return bookVenue(this);
    }
    return orElse();
  }
}

abstract class _BookVenue implements VenueBookingEvent {
  const factory _BookVenue({
    required final String? roomId,
    required final DateTime? startTime,
    required final DateTime? endTime,
  }) = _$BookVenueImpl;

  String? get roomId;
  DateTime? get startTime;
  DateTime? get endTime;

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookVenueImplCopyWith<_$BookVenueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VenueBookingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VenueBookingResponse? response) success,
    required TResult Function(String? message) failure,
    required TResult Function() loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VenueBookingResponse? response)? success,
    TResult? Function(String? message)? failure,
    TResult? Function()? loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VenueBookingResponse? response)? success,
    TResult Function(String? message)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VenueBookingStateCopyWith<$Res> {
  factory $VenueBookingStateCopyWith(
    VenueBookingState value,
    $Res Function(VenueBookingState) then,
  ) = _$VenueBookingStateCopyWithImpl<$Res, VenueBookingState>;
}

/// @nodoc
class _$VenueBookingStateCopyWithImpl<$Res, $Val extends VenueBookingState>
    implements $VenueBookingStateCopyWith<$Res> {
  _$VenueBookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VenueBookingState
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
    extends _$VenueBookingStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VenueBookingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'VenueBookingState.initial()';
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
    required TResult Function(VenueBookingResponse? response) success,
    required TResult Function(String? message) failure,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VenueBookingResponse? response)? success,
    TResult? Function(String? message)? failure,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VenueBookingResponse? response)? success,
    TResult Function(String? message)? failure,
    TResult Function()? loading,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VenueBookingState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VenueBookingResponse? response});

  $VenueBookingResponseCopyWith<$Res>? get response;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$VenueBookingStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VenueBookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? response = freezed}) {
    return _then(
      _$SuccessImpl(
        response: freezed == response
            ? _value.response
            : response // ignore: cast_nullable_to_non_nullable
                  as VenueBookingResponse?,
      ),
    );
  }

  /// Create a copy of VenueBookingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VenueBookingResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $VenueBookingResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required this.response});

  @override
  final VenueBookingResponse? response;

  @override
  String toString() {
    return 'VenueBookingState.success(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of VenueBookingState
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
    required TResult Function(VenueBookingResponse? response) success,
    required TResult Function(String? message) failure,
    required TResult Function() loading,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VenueBookingResponse? response)? success,
    TResult? Function(String? message)? failure,
    TResult? Function()? loading,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VenueBookingResponse? response)? success,
    TResult Function(String? message)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements VenueBookingState {
  const factory _Success({required final VenueBookingResponse? response}) =
      _$SuccessImpl;

  VenueBookingResponse? get response;

  /// Create a copy of VenueBookingState
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
    extends _$VenueBookingStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
    _$FailureImpl _value,
    $Res Function(_$FailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VenueBookingState
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
    return 'VenueBookingState.failure(message: $message)';
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

  /// Create a copy of VenueBookingState
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
    required TResult Function(VenueBookingResponse? response) success,
    required TResult Function(String? message) failure,
    required TResult Function() loading,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VenueBookingResponse? response)? success,
    TResult? Function(String? message)? failure,
    TResult? Function()? loading,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VenueBookingResponse? response)? success,
    TResult Function(String? message)? failure,
    TResult Function()? loading,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements VenueBookingState {
  const factory _Failure({required final String? message}) = _$FailureImpl;

  String? get message;

  /// Create a copy of VenueBookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$VenueBookingStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VenueBookingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'VenueBookingState.loading()';
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
    required TResult Function(VenueBookingResponse? response) success,
    required TResult Function(String? message) failure,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VenueBookingResponse? response)? success,
    TResult? Function(String? message)? failure,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VenueBookingResponse? response)? success,
    TResult Function(String? message)? failure,
    TResult Function()? loading,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements VenueBookingState {
  const factory _Loading() = _$LoadingImpl;
}
