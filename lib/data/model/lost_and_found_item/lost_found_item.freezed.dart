// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lost_found_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LostFoundItem _$LostFoundItemFromJson(Map<String, dynamic> json) {
  return _LostFoundItem.fromJson(json);
}

/// @nodoc
mixin _$LostFoundItem {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get properties => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;

  /// Serializes this LostFoundItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LostFoundItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LostFoundItemCopyWith<LostFoundItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LostFoundItemCopyWith<$Res> {
  factory $LostFoundItemCopyWith(
    LostFoundItem value,
    $Res Function(LostFoundItem) then,
  ) = _$LostFoundItemCopyWithImpl<$Res, LostFoundItem>;
  @useResult
  $Res call({
    int? id,
    String? name,
    String? properties,
    String? color,
    String? imageUrl,
    String? location,
    DateTime? date,
  });
}

/// @nodoc
class _$LostFoundItemCopyWithImpl<$Res, $Val extends LostFoundItem>
    implements $LostFoundItemCopyWith<$Res> {
  _$LostFoundItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LostFoundItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? properties = freezed,
    Object? color = freezed,
    Object? imageUrl = freezed,
    Object? location = freezed,
    Object? date = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            properties: freezed == properties
                ? _value.properties
                : properties // ignore: cast_nullable_to_non_nullable
                      as String?,
            color: freezed == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LostFoundItemImplCopyWith<$Res>
    implements $LostFoundItemCopyWith<$Res> {
  factory _$$LostFoundItemImplCopyWith(
    _$LostFoundItemImpl value,
    $Res Function(_$LostFoundItemImpl) then,
  ) = __$$LostFoundItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? name,
    String? properties,
    String? color,
    String? imageUrl,
    String? location,
    DateTime? date,
  });
}

/// @nodoc
class __$$LostFoundItemImplCopyWithImpl<$Res>
    extends _$LostFoundItemCopyWithImpl<$Res, _$LostFoundItemImpl>
    implements _$$LostFoundItemImplCopyWith<$Res> {
  __$$LostFoundItemImplCopyWithImpl(
    _$LostFoundItemImpl _value,
    $Res Function(_$LostFoundItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LostFoundItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? properties = freezed,
    Object? color = freezed,
    Object? imageUrl = freezed,
    Object? location = freezed,
    Object? date = freezed,
  }) {
    return _then(
      _$LostFoundItemImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        properties: freezed == properties
            ? _value.properties
            : properties // ignore: cast_nullable_to_non_nullable
                  as String?,
        color: freezed == color
            ? _value.color
            : color // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LostFoundItemImpl implements _LostFoundItem {
  const _$LostFoundItemImpl({
    required this.id,
    required this.name,
    required this.properties,
    required this.color,
    required this.imageUrl,
    required this.location,
    required this.date,
  });

  factory _$LostFoundItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LostFoundItemImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? properties;
  @override
  final String? color;
  @override
  final String? imageUrl;
  @override
  final String? location;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'LostFoundItem(id: $id, name: $name, properties: $properties, color: $color, imageUrl: $imageUrl, location: $location, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LostFoundItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.properties, properties) ||
                other.properties == properties) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    properties,
    color,
    imageUrl,
    location,
    date,
  );

  /// Create a copy of LostFoundItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LostFoundItemImplCopyWith<_$LostFoundItemImpl> get copyWith =>
      __$$LostFoundItemImplCopyWithImpl<_$LostFoundItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LostFoundItemImplToJson(this);
  }
}

abstract class _LostFoundItem implements LostFoundItem {
  const factory _LostFoundItem({
    required final int? id,
    required final String? name,
    required final String? properties,
    required final String? color,
    required final String? imageUrl,
    required final String? location,
    required final DateTime? date,
  }) = _$LostFoundItemImpl;

  factory _LostFoundItem.fromJson(Map<String, dynamic> json) =
      _$LostFoundItemImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get properties;
  @override
  String? get color;
  @override
  String? get imageUrl;
  @override
  String? get location;
  @override
  DateTime? get date;

  /// Create a copy of LostFoundItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LostFoundItemImplCopyWith<_$LostFoundItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
