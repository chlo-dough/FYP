// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alerts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlertsRecord> _$alertsRecordSerializer =
    new _$AlertsRecordSerializer();

class _$AlertsRecordSerializer implements StructuredSerializer<AlertsRecord> {
  @override
  final Iterable<Type> types = const [AlertsRecord, _$AlertsRecord];
  @override
  final String wireName = 'AlertsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AlertsRecord object,
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
    value = object.priority;
    if (value != null) {
      result
        ..add('priority')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.source;
    if (value != null) {
      result
        ..add('source')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  AlertsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlertsRecordBuilder();

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
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$AlertsRecord extends AlertsRecord {
  @override
  final DateTime? timestamp;
  @override
  final int? priority;
  @override
  final String? source;
  @override
  final bool? isFlagged;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AlertsRecord([void Function(AlertsRecordBuilder)? updates]) =>
      (new AlertsRecordBuilder()..update(updates))._build();

  _$AlertsRecord._(
      {this.timestamp, this.priority, this.source, this.isFlagged, this.ffRef})
      : super._();

  @override
  AlertsRecord rebuild(void Function(AlertsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlertsRecordBuilder toBuilder() => new AlertsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlertsRecord &&
        timestamp == other.timestamp &&
        priority == other.priority &&
        source == other.source &&
        isFlagged == other.isFlagged &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, timestamp.hashCode), priority.hashCode),
                source.hashCode),
            isFlagged.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlertsRecord')
          ..add('timestamp', timestamp)
          ..add('priority', priority)
          ..add('source', source)
          ..add('isFlagged', isFlagged)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AlertsRecordBuilder
    implements Builder<AlertsRecord, AlertsRecordBuilder> {
  _$AlertsRecord? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  String? _source;
  String? get source => _$this._source;
  set source(String? source) => _$this._source = source;

  bool? _isFlagged;
  bool? get isFlagged => _$this._isFlagged;
  set isFlagged(bool? isFlagged) => _$this._isFlagged = isFlagged;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AlertsRecordBuilder() {
    AlertsRecord._initializeBuilder(this);
  }

  AlertsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _priority = $v.priority;
      _source = $v.source;
      _isFlagged = $v.isFlagged;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlertsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlertsRecord;
  }

  @override
  void update(void Function(AlertsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlertsRecord build() => _build();

  _$AlertsRecord _build() {
    final _$result = _$v ??
        new _$AlertsRecord._(
            timestamp: timestamp,
            priority: priority,
            source: source,
            isFlagged: isFlagged,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
