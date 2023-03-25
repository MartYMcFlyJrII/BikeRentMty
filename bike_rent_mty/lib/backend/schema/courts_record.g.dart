// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CourtsRecord> _$courtsRecordSerializer =
    new _$CourtsRecordSerializer();

class _$CourtsRecordSerializer implements StructuredSerializer<CourtsRecord> {
  @override
  final Iterable<Type> types = const [CourtsRecord, _$CourtsRecord];
  @override
  final String wireName = 'CourtsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CourtsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.likes;
    if (value != null) {
      result
        ..add('likes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isIndoor;
    if (value != null) {
      result
        ..add('is_indoor')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.videoUrl;
    if (value != null) {
      result
        ..add('video_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CourtsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CourtsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_indoor':
          result.isIndoor = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'video_url':
          result.videoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CourtsRecord extends CourtsRecord {
  @override
  final String? name;
  @override
  final LatLng? location;
  @override
  final DateTime? createdAt;
  @override
  final DocumentReference<Object?>? user;
  @override
  final String? description;
  @override
  final int? likes;
  @override
  final double? value;
  @override
  final String? imageUrl;
  @override
  final bool? isIndoor;
  @override
  final String? videoUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CourtsRecord([void Function(CourtsRecordBuilder)? updates]) =>
      (new CourtsRecordBuilder()..update(updates))._build();

  _$CourtsRecord._(
      {this.name,
      this.location,
      this.createdAt,
      this.user,
      this.description,
      this.likes,
      this.value,
      this.imageUrl,
      this.isIndoor,
      this.videoUrl,
      this.ffRef})
      : super._();

  @override
  CourtsRecord rebuild(void Function(CourtsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CourtsRecordBuilder toBuilder() => new CourtsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CourtsRecord &&
        name == other.name &&
        location == other.location &&
        createdAt == other.createdAt &&
        user == other.user &&
        description == other.description &&
        likes == other.likes &&
        value == other.value &&
        imageUrl == other.imageUrl &&
        isIndoor == other.isIndoor &&
        videoUrl == other.videoUrl &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, likes.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, isIndoor.hashCode);
    _$hash = $jc(_$hash, videoUrl.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CourtsRecord')
          ..add('name', name)
          ..add('location', location)
          ..add('createdAt', createdAt)
          ..add('user', user)
          ..add('description', description)
          ..add('likes', likes)
          ..add('value', value)
          ..add('imageUrl', imageUrl)
          ..add('isIndoor', isIndoor)
          ..add('videoUrl', videoUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CourtsRecordBuilder
    implements Builder<CourtsRecord, CourtsRecordBuilder> {
  _$CourtsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _likes;
  int? get likes => _$this._likes;
  set likes(int? likes) => _$this._likes = likes;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  bool? _isIndoor;
  bool? get isIndoor => _$this._isIndoor;
  set isIndoor(bool? isIndoor) => _$this._isIndoor = isIndoor;

  String? _videoUrl;
  String? get videoUrl => _$this._videoUrl;
  set videoUrl(String? videoUrl) => _$this._videoUrl = videoUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CourtsRecordBuilder() {
    CourtsRecord._initializeBuilder(this);
  }

  CourtsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _location = $v.location;
      _createdAt = $v.createdAt;
      _user = $v.user;
      _description = $v.description;
      _likes = $v.likes;
      _value = $v.value;
      _imageUrl = $v.imageUrl;
      _isIndoor = $v.isIndoor;
      _videoUrl = $v.videoUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourtsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CourtsRecord;
  }

  @override
  void update(void Function(CourtsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CourtsRecord build() => _build();

  _$CourtsRecord _build() {
    final _$result = _$v ??
        new _$CourtsRecord._(
            name: name,
            location: location,
            createdAt: createdAt,
            user: user,
            description: description,
            likes: likes,
            value: value,
            imageUrl: imageUrl,
            isIndoor: isIndoor,
            videoUrl: videoUrl,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
