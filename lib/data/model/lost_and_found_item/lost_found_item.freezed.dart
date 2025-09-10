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
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get collectFrom => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  DateTime? get dateFound => throw _privateConstructorUsedError;
  LostFoundType? get type => throw _privateConstructorUsedError;

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
    String? title,
    String? description,
    String? location,
    String? collectFrom,
    String? imageUrl,
    DateTime? dateFound,
    LostFoundType? type,
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
    Object? title = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? collectFrom = freezed,
    Object? imageUrl = freezed,
    Object? dateFound = freezed,
    Object? type = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            collectFrom: freezed == collectFrom
                ? _value.collectFrom
                : collectFrom // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateFound: freezed == dateFound
                ? _value.dateFound
                : dateFound // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as LostFoundType?,
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
    String? title,
    String? description,
    String? location,
    String? collectFrom,
    String? imageUrl,
    DateTime? dateFound,
    LostFoundType? type,
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
    Object? title = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? collectFrom = freezed,
    Object? imageUrl = freezed,
    Object? dateFound = freezed,
    Object? type = freezed,
  }) {
    return _then(
      _$LostFoundItemImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        collectFrom: freezed == collectFrom
            ? _value.collectFrom
            : collectFrom // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateFound: freezed == dateFound
            ? _value.dateFound
            : dateFound // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as LostFoundType?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LostFoundItemImpl implements _LostFoundItem {
  const _$LostFoundItemImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.location,
    required this.collectFrom,
    required this.imageUrl,
    required this.dateFound,
    required this.type,
  });

  factory _$LostFoundItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LostFoundItemImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? location;
  @override
  final String? collectFrom;
  @override
  final String? imageUrl;
  @override
  final DateTime? dateFound;
  @override
  final LostFoundType? type;

  @override
  String toString() {
    return 'LostFoundItem(id: $id, title: $title, description: $description, location: $location, collectFrom: $collectFrom, imageUrl: $imageUrl, dateFound: $dateFound, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LostFoundItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.collectFrom, collectFrom) ||
                other.collectFrom == collectFrom) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.dateFound, dateFound) ||
                other.dateFound == dateFound) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    location,
    collectFrom,
    imageUrl,
    dateFound,
    type,
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
    required final String? title,
    required final String? description,
    required final String? location,
    required final String? collectFrom,
    required final String? imageUrl,
    required final DateTime? dateFound,
    required final LostFoundType? type,
  }) = _$LostFoundItemImpl;

  factory _LostFoundItem.fromJson(Map<String, dynamic> json) =
      _$LostFoundItemImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get location;
  @override
  String? get collectFrom;
  @override
  String? get imageUrl;
  @override
  DateTime? get dateFound;
  @override
  LostFoundType? get type;

  /// Create a copy of LostFoundItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LostFoundItemImplCopyWith<_$LostFoundItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
