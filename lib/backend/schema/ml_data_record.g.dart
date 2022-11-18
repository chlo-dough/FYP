// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ml_data_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MlDataRecord> _$mlDataRecordSerializer =
    new _$MlDataRecordSerializer();

class _$MlDataRecordSerializer implements StructuredSerializer<MlDataRecord> {
  @override
  final Iterable<Type> types = const [MlDataRecord, _$MlDataRecord];
  @override
  final String wireName = 'MlDataRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MlDataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.source;
    if (value != null) {
      result
        ..add('source')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.target;
    if (value != null) {
      result
        ..add('target')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
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
  MlDataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MlDataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'target':
          result.target = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
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

class _$MlDataRecord extends MlDataRecord {
  @override
  final DateTime? timestamp;
  @override
  final String? source;
  @override
  final String? target;
  @override
  final String? type;
  @override
  final String? content;
  @override
  final String? email;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MlDataRecord([void Function(MlDataRecordBuilder)? updates]) =>
      (new MlDataRecordBuilder()..update(updates))._build();

  _$MlDataRecord._(
      {this.timestamp,
      this.source,
      this.target,
      this.type,
      this.content,
      this.email,
      this.ffRef})
      : super._();

  @override
  MlDataRecord rebuild(void Function(MlDataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MlDataRecordBuilder toBuilder() => new MlDataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MlDataRecord &&
        timestamp == other.timestamp &&
        source == other.source &&
        target == other.target &&
        type == other.type &&
        content == other.content &&
        email == other.email &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, timestamp.hashCode), source.hashCode),
                        target.hashCode),
                    type.hashCode),
                content.hashCode),
            email.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MlDataRecord')
          ..add('timestamp', timestamp)
          ..add('source', source)
          ..add('target', target)
          ..add('type', type)
          ..add('content', content)
          ..add('email', email)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MlDataRecordBuilder
    implements Builder<MlDataRecord, MlDataRecordBuilder> {
  _$MlDataRecord? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  String? _source;
  String? get source => _$this._source;
  set source(String? source) => _$this._source = source;

  String? _target;
  String? get target => _$this._target;
  set target(String? target) => _$this._target = target;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MlDataRecordBuilder() {
    MlDataRecord._initializeBuilder(this);
  }

  MlDataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _source = $v.source;
      _target = $v.target;
      _type = $v.type;
      _content = $v.content;
      _email = $v.email;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MlDataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MlDataRecord;
  }

  @override
  void update(void Function(MlDataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MlDataRecord build() => _build();

  _$MlDataRecord _build() {
    final _$result = _$v ??
        new _$MlDataRecord._(
            timestamp: timestamp,
            source: source,
            target: target,
            type: type,
            content: content,
            email: email,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
