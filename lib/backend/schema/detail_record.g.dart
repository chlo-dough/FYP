// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DetailRecord> _$detailRecordSerializer =
    new _$DetailRecordSerializer();

class _$DetailRecordSerializer implements StructuredSerializer<DetailRecord> {
  @override
  final Iterable<Type> types = const [DetailRecord, _$DetailRecord];
  @override
  final String wireName = 'DetailRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DetailRecord object,
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
    value = object.alertScale;
    if (value != null) {
      result
        ..add('alertScale')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isFlagged;
    if (value != null) {
      result
        ..add('isFlagged')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  DetailRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DetailRecordBuilder();

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
        case 'alertScale':
          result.alertScale = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isFlagged':
          result.isFlagged = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$DetailRecord extends DetailRecord {
  @override
  final DateTime? timestamp;
  @override
  final String? source;
  @override
  final int? alertScale;
  @override
  final bool? isFlagged;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DetailRecord([void Function(DetailRecordBuilder)? updates]) =>
      (new DetailRecordBuilder()..update(updates))._build();

  _$DetailRecord._(
      {this.timestamp,
      this.source,
      this.alertScale,
      this.isFlagged,
      this.ffRef})
      : super._();

  @override
  DetailRecord rebuild(void Function(DetailRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailRecordBuilder toBuilder() => new DetailRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailRecord &&
        timestamp == other.timestamp &&
        source == other.source &&
        alertScale == other.alertScale &&
        isFlagged == other.isFlagged &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, timestamp.hashCode), source.hashCode),
                alertScale.hashCode),
            isFlagged.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DetailRecord')
          ..add('timestamp', timestamp)
          ..add('source', source)
          ..add('alertScale', alertScale)
          ..add('isFlagged', isFlagged)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DetailRecordBuilder
    implements Builder<DetailRecord, DetailRecordBuilder> {
  _$DetailRecord? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  String? _source;
  String? get source => _$this._source;
  set source(String? source) => _$this._source = source;

  int? _alertScale;
  int? get alertScale => _$this._alertScale;
  set alertScale(int? alertScale) => _$this._alertScale = alertScale;

  bool? _isFlagged;
  bool? get isFlagged => _$this._isFlagged;
  set isFlagged(bool? isFlagged) => _$this._isFlagged = isFlagged;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DetailRecordBuilder() {
    DetailRecord._initializeBuilder(this);
  }

  DetailRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _source = $v.source;
      _alertScale = $v.alertScale;
      _isFlagged = $v.isFlagged;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetailRecord;
  }

  @override
  void update(void Function(DetailRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetailRecord build() => _build();

  _$DetailRecord _build() {
    final _$result = _$v ??
        new _$DetailRecord._(
            timestamp: timestamp,
            source: source,
            alertScale: alertScale,
            isFlagged: isFlagged,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
