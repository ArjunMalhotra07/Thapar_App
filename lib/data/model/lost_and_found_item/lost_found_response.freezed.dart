// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lost_found_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LostFoundResponse _$LostFoundResponseFromJson(Map<String, dynamic> json) {
  return _LostFoundResponse.fromJson(json);
}

/// @nodoc
mixin _$LostFoundResponse {
  List<LostFoundItem> get items => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this LostFoundResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LostFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LostFoundResponseCopyWith<LostFoundResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LostFoundResponseCopyWith<$Res> {
  factory $LostFoundResponseCopyWith(
    LostFoundResponse value,
    $Res Function(LostFoundResponse) then,
  ) = _$LostFoundResponseCopyWithImpl<$Res, LostFoundResponse>;
  @useResult
  $Res call({List<LostFoundItem> items, int count});
}

/// @nodoc
class _$LostFoundResponseCopyWithImpl<$Res, $Val extends LostFoundResponse>
    implements $LostFoundResponseCopyWith<$Res> {
  _$LostFoundResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LostFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? count = null}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<LostFoundItem>,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LostFoundResponseImplCopyWith<$Res>
    implements $LostFoundResponseCopyWith<$Res> {
  factory _$$LostFoundResponseImplCopyWith(
    _$LostFoundResponseImpl value,
    $Res Function(_$LostFoundResponseImpl) then,
  ) = __$$LostFoundResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LostFoundItem> items, int count});
}

/// @nodoc
class __$$LostFoundResponseImplCopyWithImpl<$Res>
    extends _$LostFoundResponseCopyWithImpl<$Res, _$LostFoundResponseImpl>
    implements _$$LostFoundResponseImplCopyWith<$Res> {
  __$$LostFoundResponseImplCopyWithImpl(
    _$LostFoundResponseImpl _value,
    $Res Function(_$LostFoundResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LostFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? count = null}) {
    return _then(
      _$LostFoundResponseImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<LostFoundItem>,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LostFoundResponseImpl implements _LostFoundResponse {
  const _$LostFoundResponseImpl({
    required final List<LostFoundItem> items,
    required this.count,
  }) : _items = items;

  factory _$LostFoundResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LostFoundResponseImplFromJson(json);

  final List<LostFoundItem> _items;
  @override
  List<LostFoundItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int count;

  @override
  String toString() {
    return 'LostFoundResponse(items: $items, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LostFoundResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    count,
  );

  /// Create a copy of LostFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LostFoundResponseImplCopyWith<_$LostFoundResponseImpl> get copyWith =>
      __$$LostFoundResponseImplCopyWithImpl<_$LostFoundResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LostFoundResponseImplToJson(this);
  }
}

abstract class _LostFoundResponse implements LostFoundResponse {
  const factory _LostFoundResponse({
    required final List<LostFoundItem> items,
    required final int count,
  }) = _$LostFoundResponseImpl;

  factory _LostFoundResponse.fromJson(Map<String, dynamic> json) =
      _$LostFoundResponseImpl.fromJson;

  @override
  List<LostFoundItem> get items;
  @override
  int get count;

  /// Create a copy of LostFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LostFoundResponseImplCopyWith<_$LostFoundResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
