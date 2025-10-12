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
    required TResult Function(String date) fetchVenues,
    required TResult Function(String venueID) selectedVenue,
    required TResult Function(String roomID) selectedRoom,
    required TResult Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )
    bookVenue,
    required TResult Function(String timeSlotID) selectedTimeSlot,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date)? fetchVenues,
    TResult? Function(String venueID)? selectedVenue,
    TResult? Function(String roomID)? selectedRoom,
    TResult? Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )?
    bookVenue,
    TResult? Function(String timeSlotID)? selectedTimeSlot,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date)? fetchVenues,
    TResult Function(String venueID)? selectedVenue,
    TResult Function(String roomID)? selectedRoom,
    TResult Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )?
    bookVenue,
    TResult Function(String timeSlotID)? selectedTimeSlot,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchVenues value) fetchVenues,
    required TResult Function(_SelectedVenue value) selectedVenue,
    required TResult Function(_SelectedRoom value) selectedRoom,
    required TResult Function(_BookVenue value) bookVenue,
    required TResult Function(_SelectedTimeSlot value) selectedTimeSlot,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchVenues value)? fetchVenues,
    TResult? Function(_SelectedVenue value)? selectedVenue,
    TResult? Function(_SelectedRoom value)? selectedRoom,
    TResult? Function(_BookVenue value)? bookVenue,
    TResult? Function(_SelectedTimeSlot value)? selectedTimeSlot,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchVenues value)? fetchVenues,
    TResult Function(_SelectedVenue value)? selectedVenue,
    TResult Function(_SelectedRoom value)? selectedRoom,
    TResult Function(_BookVenue value)? bookVenue,
    TResult Function(_SelectedTimeSlot value)? selectedTimeSlot,
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
  @useResult
  $Res call({String date});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null}) {
    return _then(
      _$FetchVenuesImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$FetchVenuesImpl implements _FetchVenues {
  const _$FetchVenuesImpl({required this.date});

  @override
  final String date;

  @override
  String toString() {
    return 'VenueBookingEvent.fetchVenues(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchVenuesImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchVenuesImplCopyWith<_$FetchVenuesImpl> get copyWith =>
      __$$FetchVenuesImplCopyWithImpl<_$FetchVenuesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date) fetchVenues,
    required TResult Function(String venueID) selectedVenue,
    required TResult Function(String roomID) selectedRoom,
    required TResult Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )
    bookVenue,
    required TResult Function(String timeSlotID) selectedTimeSlot,
  }) {
    return fetchVenues(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date)? fetchVenues,
    TResult? Function(String venueID)? selectedVenue,
    TResult? Function(String roomID)? selectedRoom,
    TResult? Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )?
    bookVenue,
    TResult? Function(String timeSlotID)? selectedTimeSlot,
  }) {
    return fetchVenues?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date)? fetchVenues,
    TResult Function(String venueID)? selectedVenue,
    TResult Function(String roomID)? selectedRoom,
    TResult Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )?
    bookVenue,
    TResult Function(String timeSlotID)? selectedTimeSlot,
    required TResult orElse(),
  }) {
    if (fetchVenues != null) {
      return fetchVenues(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchVenues value) fetchVenues,
    required TResult Function(_SelectedVenue value) selectedVenue,
    required TResult Function(_SelectedRoom value) selectedRoom,
    required TResult Function(_BookVenue value) bookVenue,
    required TResult Function(_SelectedTimeSlot value) selectedTimeSlot,
  }) {
    return fetchVenues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchVenues value)? fetchVenues,
    TResult? Function(_SelectedVenue value)? selectedVenue,
    TResult? Function(_SelectedRoom value)? selectedRoom,
    TResult? Function(_BookVenue value)? bookVenue,
    TResult? Function(_SelectedTimeSlot value)? selectedTimeSlot,
  }) {
    return fetchVenues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchVenues value)? fetchVenues,
    TResult Function(_SelectedVenue value)? selectedVenue,
    TResult Function(_SelectedRoom value)? selectedRoom,
    TResult Function(_BookVenue value)? bookVenue,
    TResult Function(_SelectedTimeSlot value)? selectedTimeSlot,
    required TResult orElse(),
  }) {
    if (fetchVenues != null) {
      return fetchVenues(this);
    }
    return orElse();
  }
}

abstract class _FetchVenues implements VenueBookingEvent {
  const factory _FetchVenues({required final String date}) = _$FetchVenuesImpl;

  String get date;

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchVenuesImplCopyWith<_$FetchVenuesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedVenueImplCopyWith<$Res> {
  factory _$$SelectedVenueImplCopyWith(
    _$SelectedVenueImpl value,
    $Res Function(_$SelectedVenueImpl) then,
  ) = __$$SelectedVenueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String venueID});
}

/// @nodoc
class __$$SelectedVenueImplCopyWithImpl<$Res>
    extends _$VenueBookingEventCopyWithImpl<$Res, _$SelectedVenueImpl>
    implements _$$SelectedVenueImplCopyWith<$Res> {
  __$$SelectedVenueImplCopyWithImpl(
    _$SelectedVenueImpl _value,
    $Res Function(_$SelectedVenueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? venueID = null}) {
    return _then(
      _$SelectedVenueImpl(
        venueID: null == venueID
            ? _value.venueID
            : venueID // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SelectedVenueImpl implements _SelectedVenue {
  const _$SelectedVenueImpl({required this.venueID});

  @override
  final String venueID;

  @override
  String toString() {
    return 'VenueBookingEvent.selectedVenue(venueID: $venueID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedVenueImpl &&
            (identical(other.venueID, venueID) || other.venueID == venueID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, venueID);

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedVenueImplCopyWith<_$SelectedVenueImpl> get copyWith =>
      __$$SelectedVenueImplCopyWithImpl<_$SelectedVenueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date) fetchVenues,
    required TResult Function(String venueID) selectedVenue,
    required TResult Function(String roomID) selectedRoom,
    required TResult Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )
    bookVenue,
    required TResult Function(String timeSlotID) selectedTimeSlot,
  }) {
    return selectedVenue(venueID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date)? fetchVenues,
    TResult? Function(String venueID)? selectedVenue,
    TResult? Function(String roomID)? selectedRoom,
    TResult? Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )?
    bookVenue,
    TResult? Function(String timeSlotID)? selectedTimeSlot,
  }) {
    return selectedVenue?.call(venueID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date)? fetchVenues,
    TResult Function(String venueID)? selectedVenue,
    TResult Function(String roomID)? selectedRoom,
    TResult Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )?
    bookVenue,
    TResult Function(String timeSlotID)? selectedTimeSlot,
    required TResult orElse(),
  }) {
    if (selectedVenue != null) {
      return selectedVenue(venueID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchVenues value) fetchVenues,
    required TResult Function(_SelectedVenue value) selectedVenue,
    required TResult Function(_SelectedRoom value) selectedRoom,
    required TResult Function(_BookVenue value) bookVenue,
    required TResult Function(_SelectedTimeSlot value) selectedTimeSlot,
  }) {
    return selectedVenue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchVenues value)? fetchVenues,
    TResult? Function(_SelectedVenue value)? selectedVenue,
    TResult? Function(_SelectedRoom value)? selectedRoom,
    TResult? Function(_BookVenue value)? bookVenue,
    TResult? Function(_SelectedTimeSlot value)? selectedTimeSlot,
  }) {
    return selectedVenue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchVenues value)? fetchVenues,
    TResult Function(_SelectedVenue value)? selectedVenue,
    TResult Function(_SelectedRoom value)? selectedRoom,
    TResult Function(_BookVenue value)? bookVenue,
    TResult Function(_SelectedTimeSlot value)? selectedTimeSlot,
    required TResult orElse(),
  }) {
    if (selectedVenue != null) {
      return selectedVenue(this);
    }
    return orElse();
  }
}

abstract class _SelectedVenue implements VenueBookingEvent {
  const factory _SelectedVenue({required final String venueID}) =
      _$SelectedVenueImpl;

  String get venueID;

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedVenueImplCopyWith<_$SelectedVenueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedRoomImplCopyWith<$Res> {
  factory _$$SelectedRoomImplCopyWith(
    _$SelectedRoomImpl value,
    $Res Function(_$SelectedRoomImpl) then,
  ) = __$$SelectedRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomID});
}

/// @nodoc
class __$$SelectedRoomImplCopyWithImpl<$Res>
    extends _$VenueBookingEventCopyWithImpl<$Res, _$SelectedRoomImpl>
    implements _$$SelectedRoomImplCopyWith<$Res> {
  __$$SelectedRoomImplCopyWithImpl(
    _$SelectedRoomImpl _value,
    $Res Function(_$SelectedRoomImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? roomID = null}) {
    return _then(
      _$SelectedRoomImpl(
        roomID: null == roomID
            ? _value.roomID
            : roomID // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SelectedRoomImpl implements _SelectedRoom {
  const _$SelectedRoomImpl({required this.roomID});

  @override
  final String roomID;

  @override
  String toString() {
    return 'VenueBookingEvent.selectedRoom(roomID: $roomID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedRoomImpl &&
            (identical(other.roomID, roomID) || other.roomID == roomID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomID);

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedRoomImplCopyWith<_$SelectedRoomImpl> get copyWith =>
      __$$SelectedRoomImplCopyWithImpl<_$SelectedRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date) fetchVenues,
    required TResult Function(String venueID) selectedVenue,
    required TResult Function(String roomID) selectedRoom,
    required TResult Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )
    bookVenue,
    required TResult Function(String timeSlotID) selectedTimeSlot,
  }) {
    return selectedRoom(roomID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date)? fetchVenues,
    TResult? Function(String venueID)? selectedVenue,
    TResult? Function(String roomID)? selectedRoom,
    TResult? Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )?
    bookVenue,
    TResult? Function(String timeSlotID)? selectedTimeSlot,
  }) {
    return selectedRoom?.call(roomID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date)? fetchVenues,
    TResult Function(String venueID)? selectedVenue,
    TResult Function(String roomID)? selectedRoom,
    TResult Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )?
    bookVenue,
    TResult Function(String timeSlotID)? selectedTimeSlot,
    required TResult orElse(),
  }) {
    if (selectedRoom != null) {
      return selectedRoom(roomID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchVenues value) fetchVenues,
    required TResult Function(_SelectedVenue value) selectedVenue,
    required TResult Function(_SelectedRoom value) selectedRoom,
    required TResult Function(_BookVenue value) bookVenue,
    required TResult Function(_SelectedTimeSlot value) selectedTimeSlot,
  }) {
    return selectedRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchVenues value)? fetchVenues,
    TResult? Function(_SelectedVenue value)? selectedVenue,
    TResult? Function(_SelectedRoom value)? selectedRoom,
    TResult? Function(_BookVenue value)? bookVenue,
    TResult? Function(_SelectedTimeSlot value)? selectedTimeSlot,
  }) {
    return selectedRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchVenues value)? fetchVenues,
    TResult Function(_SelectedVenue value)? selectedVenue,
    TResult Function(_SelectedRoom value)? selectedRoom,
    TResult Function(_BookVenue value)? bookVenue,
    TResult Function(_SelectedTimeSlot value)? selectedTimeSlot,
    required TResult orElse(),
  }) {
    if (selectedRoom != null) {
      return selectedRoom(this);
    }
    return orElse();
  }
}

abstract class _SelectedRoom implements VenueBookingEvent {
  const factory _SelectedRoom({required final String roomID}) =
      _$SelectedRoomImpl;

  String get roomID;

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedRoomImplCopyWith<_$SelectedRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookVenueImplCopyWith<$Res> {
  factory _$$BookVenueImplCopyWith(
    _$BookVenueImpl value,
    $Res Function(_$BookVenueImpl) then,
  ) = __$$BookVenueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String? venueId,
    String? roomId,
    String? startTime,
    String? endTime,
    String? date,
  });
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
    Object? venueId = freezed,
    Object? roomId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? date = freezed,
  }) {
    return _then(
      _$BookVenueImpl(
        venueId: freezed == venueId
            ? _value.venueId
            : venueId // ignore: cast_nullable_to_non_nullable
                  as String?,
        roomId: freezed == roomId
            ? _value.roomId
            : roomId // ignore: cast_nullable_to_non_nullable
                  as String?,
        startTime: freezed == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        endTime: freezed == endTime
            ? _value.endTime
            : endTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$BookVenueImpl implements _BookVenue {
  const _$BookVenueImpl({
    required this.venueId,
    required this.roomId,
    required this.startTime,
    required this.endTime,
    required this.date,
  });

  @override
  final String? venueId;
  @override
  final String? roomId;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final String? date;

  @override
  String toString() {
    return 'VenueBookingEvent.bookVenue(venueId: $venueId, roomId: $roomId, startTime: $startTime, endTime: $endTime, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookVenueImpl &&
            (identical(other.venueId, venueId) || other.venueId == venueId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, venueId, roomId, startTime, endTime, date);

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
    required TResult Function(String date) fetchVenues,
    required TResult Function(String venueID) selectedVenue,
    required TResult Function(String roomID) selectedRoom,
    required TResult Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )
    bookVenue,
    required TResult Function(String timeSlotID) selectedTimeSlot,
  }) {
    return bookVenue(venueId, roomId, startTime, endTime, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date)? fetchVenues,
    TResult? Function(String venueID)? selectedVenue,
    TResult? Function(String roomID)? selectedRoom,
    TResult? Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )?
    bookVenue,
    TResult? Function(String timeSlotID)? selectedTimeSlot,
  }) {
    return bookVenue?.call(venueId, roomId, startTime, endTime, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date)? fetchVenues,
    TResult Function(String venueID)? selectedVenue,
    TResult Function(String roomID)? selectedRoom,
    TResult Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )?
    bookVenue,
    TResult Function(String timeSlotID)? selectedTimeSlot,
    required TResult orElse(),
  }) {
    if (bookVenue != null) {
      return bookVenue(venueId, roomId, startTime, endTime, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchVenues value) fetchVenues,
    required TResult Function(_SelectedVenue value) selectedVenue,
    required TResult Function(_SelectedRoom value) selectedRoom,
    required TResult Function(_BookVenue value) bookVenue,
    required TResult Function(_SelectedTimeSlot value) selectedTimeSlot,
  }) {
    return bookVenue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchVenues value)? fetchVenues,
    TResult? Function(_SelectedVenue value)? selectedVenue,
    TResult? Function(_SelectedRoom value)? selectedRoom,
    TResult? Function(_BookVenue value)? bookVenue,
    TResult? Function(_SelectedTimeSlot value)? selectedTimeSlot,
  }) {
    return bookVenue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchVenues value)? fetchVenues,
    TResult Function(_SelectedVenue value)? selectedVenue,
    TResult Function(_SelectedRoom value)? selectedRoom,
    TResult Function(_BookVenue value)? bookVenue,
    TResult Function(_SelectedTimeSlot value)? selectedTimeSlot,
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
    required final String? venueId,
    required final String? roomId,
    required final String? startTime,
    required final String? endTime,
    required final String? date,
  }) = _$BookVenueImpl;

  String? get venueId;
  String? get roomId;
  String? get startTime;
  String? get endTime;
  String? get date;

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookVenueImplCopyWith<_$BookVenueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedTimeSlotImplCopyWith<$Res> {
  factory _$$SelectedTimeSlotImplCopyWith(
    _$SelectedTimeSlotImpl value,
    $Res Function(_$SelectedTimeSlotImpl) then,
  ) = __$$SelectedTimeSlotImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String timeSlotID});
}

/// @nodoc
class __$$SelectedTimeSlotImplCopyWithImpl<$Res>
    extends _$VenueBookingEventCopyWithImpl<$Res, _$SelectedTimeSlotImpl>
    implements _$$SelectedTimeSlotImplCopyWith<$Res> {
  __$$SelectedTimeSlotImplCopyWithImpl(
    _$SelectedTimeSlotImpl _value,
    $Res Function(_$SelectedTimeSlotImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? timeSlotID = null}) {
    return _then(
      _$SelectedTimeSlotImpl(
        timeSlotID: null == timeSlotID
            ? _value.timeSlotID
            : timeSlotID // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SelectedTimeSlotImpl implements _SelectedTimeSlot {
  const _$SelectedTimeSlotImpl({required this.timeSlotID});

  @override
  final String timeSlotID;

  @override
  String toString() {
    return 'VenueBookingEvent.selectedTimeSlot(timeSlotID: $timeSlotID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedTimeSlotImpl &&
            (identical(other.timeSlotID, timeSlotID) ||
                other.timeSlotID == timeSlotID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeSlotID);

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedTimeSlotImplCopyWith<_$SelectedTimeSlotImpl> get copyWith =>
      __$$SelectedTimeSlotImplCopyWithImpl<_$SelectedTimeSlotImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date) fetchVenues,
    required TResult Function(String venueID) selectedVenue,
    required TResult Function(String roomID) selectedRoom,
    required TResult Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )
    bookVenue,
    required TResult Function(String timeSlotID) selectedTimeSlot,
  }) {
    return selectedTimeSlot(timeSlotID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date)? fetchVenues,
    TResult? Function(String venueID)? selectedVenue,
    TResult? Function(String roomID)? selectedRoom,
    TResult? Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )?
    bookVenue,
    TResult? Function(String timeSlotID)? selectedTimeSlot,
  }) {
    return selectedTimeSlot?.call(timeSlotID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date)? fetchVenues,
    TResult Function(String venueID)? selectedVenue,
    TResult Function(String roomID)? selectedRoom,
    TResult Function(
      String? venueId,
      String? roomId,
      String? startTime,
      String? endTime,
      String? date,
    )?
    bookVenue,
    TResult Function(String timeSlotID)? selectedTimeSlot,
    required TResult orElse(),
  }) {
    if (selectedTimeSlot != null) {
      return selectedTimeSlot(timeSlotID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchVenues value) fetchVenues,
    required TResult Function(_SelectedVenue value) selectedVenue,
    required TResult Function(_SelectedRoom value) selectedRoom,
    required TResult Function(_BookVenue value) bookVenue,
    required TResult Function(_SelectedTimeSlot value) selectedTimeSlot,
  }) {
    return selectedTimeSlot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchVenues value)? fetchVenues,
    TResult? Function(_SelectedVenue value)? selectedVenue,
    TResult? Function(_SelectedRoom value)? selectedRoom,
    TResult? Function(_BookVenue value)? bookVenue,
    TResult? Function(_SelectedTimeSlot value)? selectedTimeSlot,
  }) {
    return selectedTimeSlot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchVenues value)? fetchVenues,
    TResult Function(_SelectedVenue value)? selectedVenue,
    TResult Function(_SelectedRoom value)? selectedRoom,
    TResult Function(_BookVenue value)? bookVenue,
    TResult Function(_SelectedTimeSlot value)? selectedTimeSlot,
    required TResult orElse(),
  }) {
    if (selectedTimeSlot != null) {
      return selectedTimeSlot(this);
    }
    return orElse();
  }
}

abstract class _SelectedTimeSlot implements VenueBookingEvent {
  const factory _SelectedTimeSlot({required final String timeSlotID}) =
      _$SelectedTimeSlotImpl;

  String get timeSlotID;

  /// Create a copy of VenueBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedTimeSlotImplCopyWith<_$SelectedTimeSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VenueBookingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )
    venuesFetched,
    required TResult Function() bookingInProgress,
    required TResult Function(String? message) bookingSuccess,
    required TResult Function(String? message) failure,
    required TResult Function() loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )?
    venuesFetched,
    TResult? Function()? bookingInProgress,
    TResult? Function(String? message)? bookingSuccess,
    TResult? Function(String? message)? failure,
    TResult? Function()? loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )?
    venuesFetched,
    TResult Function()? bookingInProgress,
    TResult Function(String? message)? bookingSuccess,
    TResult Function(String? message)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VenuesFetched value) venuesFetched,
    required TResult Function(_BookingInProgress value) bookingInProgress,
    required TResult Function(_BookingSuccess value) bookingSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VenuesFetched value)? venuesFetched,
    TResult? Function(_BookingInProgress value)? bookingInProgress,
    TResult? Function(_BookingSuccess value)? bookingSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VenuesFetched value)? venuesFetched,
    TResult Function(_BookingInProgress value)? bookingInProgress,
    TResult Function(_BookingSuccess value)? bookingSuccess,
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
    required TResult Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )
    venuesFetched,
    required TResult Function() bookingInProgress,
    required TResult Function(String? message) bookingSuccess,
    required TResult Function(String? message) failure,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )?
    venuesFetched,
    TResult? Function()? bookingInProgress,
    TResult? Function(String? message)? bookingSuccess,
    TResult? Function(String? message)? failure,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )?
    venuesFetched,
    TResult Function()? bookingInProgress,
    TResult Function(String? message)? bookingSuccess,
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
    required TResult Function(_VenuesFetched value) venuesFetched,
    required TResult Function(_BookingInProgress value) bookingInProgress,
    required TResult Function(_BookingSuccess value) bookingSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VenuesFetched value)? venuesFetched,
    TResult? Function(_BookingInProgress value)? bookingInProgress,
    TResult? Function(_BookingSuccess value)? bookingSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VenuesFetched value)? venuesFetched,
    TResult Function(_BookingInProgress value)? bookingInProgress,
    TResult Function(_BookingSuccess value)? bookingSuccess,
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
abstract class _$$VenuesFetchedImplCopyWith<$Res> {
  factory _$$VenuesFetchedImplCopyWith(
    _$VenuesFetchedImpl value,
    $Res Function(_$VenuesFetchedImpl) then,
  ) = __$$VenuesFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    List<Venue> venues,
    List<Room> rooms,
    String? venueID,
    String? roomID,
    String? timeSlotID,
  });
}

/// @nodoc
class __$$VenuesFetchedImplCopyWithImpl<$Res>
    extends _$VenueBookingStateCopyWithImpl<$Res, _$VenuesFetchedImpl>
    implements _$$VenuesFetchedImplCopyWith<$Res> {
  __$$VenuesFetchedImplCopyWithImpl(
    _$VenuesFetchedImpl _value,
    $Res Function(_$VenuesFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VenueBookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? venues = null,
    Object? rooms = null,
    Object? venueID = freezed,
    Object? roomID = freezed,
    Object? timeSlotID = freezed,
  }) {
    return _then(
      _$VenuesFetchedImpl(
        venues: null == venues
            ? _value._venues
            : venues // ignore: cast_nullable_to_non_nullable
                  as List<Venue>,
        rooms: null == rooms
            ? _value._rooms
            : rooms // ignore: cast_nullable_to_non_nullable
                  as List<Room>,
        venueID: freezed == venueID
            ? _value.venueID
            : venueID // ignore: cast_nullable_to_non_nullable
                  as String?,
        roomID: freezed == roomID
            ? _value.roomID
            : roomID // ignore: cast_nullable_to_non_nullable
                  as String?,
        timeSlotID: freezed == timeSlotID
            ? _value.timeSlotID
            : timeSlotID // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$VenuesFetchedImpl implements _VenuesFetched {
  const _$VenuesFetchedImpl({
    required final List<Venue> venues,
    required final List<Room> rooms,
    required this.venueID,
    required this.roomID,
    required this.timeSlotID,
  }) : _venues = venues,
       _rooms = rooms;

  final List<Venue> _venues;
  @override
  List<Venue> get venues {
    if (_venues is EqualUnmodifiableListView) return _venues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_venues);
  }

  final List<Room> _rooms;
  @override
  List<Room> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  final String? venueID;
  @override
  final String? roomID;
  @override
  final String? timeSlotID;

  @override
  String toString() {
    return 'VenueBookingState.venuesFetched(venues: $venues, rooms: $rooms, venueID: $venueID, roomID: $roomID, timeSlotID: $timeSlotID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VenuesFetchedImpl &&
            const DeepCollectionEquality().equals(other._venues, _venues) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.venueID, venueID) || other.venueID == venueID) &&
            (identical(other.roomID, roomID) || other.roomID == roomID) &&
            (identical(other.timeSlotID, timeSlotID) ||
                other.timeSlotID == timeSlotID));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_venues),
    const DeepCollectionEquality().hash(_rooms),
    venueID,
    roomID,
    timeSlotID,
  );

  /// Create a copy of VenueBookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VenuesFetchedImplCopyWith<_$VenuesFetchedImpl> get copyWith =>
      __$$VenuesFetchedImplCopyWithImpl<_$VenuesFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )
    venuesFetched,
    required TResult Function() bookingInProgress,
    required TResult Function(String? message) bookingSuccess,
    required TResult Function(String? message) failure,
    required TResult Function() loading,
  }) {
    return venuesFetched(venues, rooms, venueID, roomID, timeSlotID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )?
    venuesFetched,
    TResult? Function()? bookingInProgress,
    TResult? Function(String? message)? bookingSuccess,
    TResult? Function(String? message)? failure,
    TResult? Function()? loading,
  }) {
    return venuesFetched?.call(venues, rooms, venueID, roomID, timeSlotID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )?
    venuesFetched,
    TResult Function()? bookingInProgress,
    TResult Function(String? message)? bookingSuccess,
    TResult Function(String? message)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (venuesFetched != null) {
      return venuesFetched(venues, rooms, venueID, roomID, timeSlotID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VenuesFetched value) venuesFetched,
    required TResult Function(_BookingInProgress value) bookingInProgress,
    required TResult Function(_BookingSuccess value) bookingSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return venuesFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VenuesFetched value)? venuesFetched,
    TResult? Function(_BookingInProgress value)? bookingInProgress,
    TResult? Function(_BookingSuccess value)? bookingSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return venuesFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VenuesFetched value)? venuesFetched,
    TResult Function(_BookingInProgress value)? bookingInProgress,
    TResult Function(_BookingSuccess value)? bookingSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (venuesFetched != null) {
      return venuesFetched(this);
    }
    return orElse();
  }
}

abstract class _VenuesFetched implements VenueBookingState {
  const factory _VenuesFetched({
    required final List<Venue> venues,
    required final List<Room> rooms,
    required final String? venueID,
    required final String? roomID,
    required final String? timeSlotID,
  }) = _$VenuesFetchedImpl;

  List<Venue> get venues;
  List<Room> get rooms;
  String? get venueID;
  String? get roomID;
  String? get timeSlotID;

  /// Create a copy of VenueBookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VenuesFetchedImplCopyWith<_$VenuesFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingInProgressImplCopyWith<$Res> {
  factory _$$BookingInProgressImplCopyWith(
    _$BookingInProgressImpl value,
    $Res Function(_$BookingInProgressImpl) then,
  ) = __$$BookingInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingInProgressImplCopyWithImpl<$Res>
    extends _$VenueBookingStateCopyWithImpl<$Res, _$BookingInProgressImpl>
    implements _$$BookingInProgressImplCopyWith<$Res> {
  __$$BookingInProgressImplCopyWithImpl(
    _$BookingInProgressImpl _value,
    $Res Function(_$BookingInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VenueBookingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BookingInProgressImpl implements _BookingInProgress {
  const _$BookingInProgressImpl();

  @override
  String toString() {
    return 'VenueBookingState.bookingInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookingInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )
    venuesFetched,
    required TResult Function() bookingInProgress,
    required TResult Function(String? message) bookingSuccess,
    required TResult Function(String? message) failure,
    required TResult Function() loading,
  }) {
    return bookingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )?
    venuesFetched,
    TResult? Function()? bookingInProgress,
    TResult? Function(String? message)? bookingSuccess,
    TResult? Function(String? message)? failure,
    TResult? Function()? loading,
  }) {
    return bookingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )?
    venuesFetched,
    TResult Function()? bookingInProgress,
    TResult Function(String? message)? bookingSuccess,
    TResult Function(String? message)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (bookingInProgress != null) {
      return bookingInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VenuesFetched value) venuesFetched,
    required TResult Function(_BookingInProgress value) bookingInProgress,
    required TResult Function(_BookingSuccess value) bookingSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return bookingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VenuesFetched value)? venuesFetched,
    TResult? Function(_BookingInProgress value)? bookingInProgress,
    TResult? Function(_BookingSuccess value)? bookingSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return bookingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VenuesFetched value)? venuesFetched,
    TResult Function(_BookingInProgress value)? bookingInProgress,
    TResult Function(_BookingSuccess value)? bookingSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (bookingInProgress != null) {
      return bookingInProgress(this);
    }
    return orElse();
  }
}

abstract class _BookingInProgress implements VenueBookingState {
  const factory _BookingInProgress() = _$BookingInProgressImpl;
}

/// @nodoc
abstract class _$$BookingSuccessImplCopyWith<$Res> {
  factory _$$BookingSuccessImplCopyWith(
    _$BookingSuccessImpl value,
    $Res Function(_$BookingSuccessImpl) then,
  ) = __$$BookingSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$BookingSuccessImplCopyWithImpl<$Res>
    extends _$VenueBookingStateCopyWithImpl<$Res, _$BookingSuccessImpl>
    implements _$$BookingSuccessImplCopyWith<$Res> {
  __$$BookingSuccessImplCopyWithImpl(
    _$BookingSuccessImpl _value,
    $Res Function(_$BookingSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VenueBookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$BookingSuccessImpl(
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$BookingSuccessImpl implements _BookingSuccess {
  const _$BookingSuccessImpl({required this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'VenueBookingState.bookingSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of VenueBookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingSuccessImplCopyWith<_$BookingSuccessImpl> get copyWith =>
      __$$BookingSuccessImplCopyWithImpl<_$BookingSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )
    venuesFetched,
    required TResult Function() bookingInProgress,
    required TResult Function(String? message) bookingSuccess,
    required TResult Function(String? message) failure,
    required TResult Function() loading,
  }) {
    return bookingSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )?
    venuesFetched,
    TResult? Function()? bookingInProgress,
    TResult? Function(String? message)? bookingSuccess,
    TResult? Function(String? message)? failure,
    TResult? Function()? loading,
  }) {
    return bookingSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )?
    venuesFetched,
    TResult Function()? bookingInProgress,
    TResult Function(String? message)? bookingSuccess,
    TResult Function(String? message)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (bookingSuccess != null) {
      return bookingSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VenuesFetched value) venuesFetched,
    required TResult Function(_BookingInProgress value) bookingInProgress,
    required TResult Function(_BookingSuccess value) bookingSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return bookingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VenuesFetched value)? venuesFetched,
    TResult? Function(_BookingInProgress value)? bookingInProgress,
    TResult? Function(_BookingSuccess value)? bookingSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return bookingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VenuesFetched value)? venuesFetched,
    TResult Function(_BookingInProgress value)? bookingInProgress,
    TResult Function(_BookingSuccess value)? bookingSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (bookingSuccess != null) {
      return bookingSuccess(this);
    }
    return orElse();
  }
}

abstract class _BookingSuccess implements VenueBookingState {
  const factory _BookingSuccess({required final String? message}) =
      _$BookingSuccessImpl;

  String? get message;

  /// Create a copy of VenueBookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingSuccessImplCopyWith<_$BookingSuccessImpl> get copyWith =>
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
    required TResult Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )
    venuesFetched,
    required TResult Function() bookingInProgress,
    required TResult Function(String? message) bookingSuccess,
    required TResult Function(String? message) failure,
    required TResult Function() loading,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )?
    venuesFetched,
    TResult? Function()? bookingInProgress,
    TResult? Function(String? message)? bookingSuccess,
    TResult? Function(String? message)? failure,
    TResult? Function()? loading,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )?
    venuesFetched,
    TResult Function()? bookingInProgress,
    TResult Function(String? message)? bookingSuccess,
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
    required TResult Function(_VenuesFetched value) venuesFetched,
    required TResult Function(_BookingInProgress value) bookingInProgress,
    required TResult Function(_BookingSuccess value) bookingSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VenuesFetched value)? venuesFetched,
    TResult? Function(_BookingInProgress value)? bookingInProgress,
    TResult? Function(_BookingSuccess value)? bookingSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VenuesFetched value)? venuesFetched,
    TResult Function(_BookingInProgress value)? bookingInProgress,
    TResult Function(_BookingSuccess value)? bookingSuccess,
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
    required TResult Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )
    venuesFetched,
    required TResult Function() bookingInProgress,
    required TResult Function(String? message) bookingSuccess,
    required TResult Function(String? message) failure,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )?
    venuesFetched,
    TResult? Function()? bookingInProgress,
    TResult? Function(String? message)? bookingSuccess,
    TResult? Function(String? message)? failure,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      List<Venue> venues,
      List<Room> rooms,
      String? venueID,
      String? roomID,
      String? timeSlotID,
    )?
    venuesFetched,
    TResult Function()? bookingInProgress,
    TResult Function(String? message)? bookingSuccess,
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
    required TResult Function(_VenuesFetched value) venuesFetched,
    required TResult Function(_BookingInProgress value) bookingInProgress,
    required TResult Function(_BookingSuccess value) bookingSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VenuesFetched value)? venuesFetched,
    TResult? Function(_BookingInProgress value)? bookingInProgress,
    TResult? Function(_BookingSuccess value)? bookingSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VenuesFetched value)? venuesFetched,
    TResult Function(_BookingInProgress value)? bookingInProgress,
    TResult Function(_BookingSuccess value)? bookingSuccess,
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
