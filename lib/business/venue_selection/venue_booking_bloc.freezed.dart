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
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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
  TResult when<TResult extends Object?>({required TResult Function() initial}) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({TResult? Function()? initial}) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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
