// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dummy_alert_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DummyAlertRecord> _$dummyAlertRecordSerializer =
    new _$DummyAlertRecordSerializer();

class _$DummyAlertRecordSerializer
    implements StructuredSerializer<DummyAlertRecord> {
  @override
  final Iterable<Type> types = const [DummyAlertRecord, _$DummyAlertRecord];
  @override
  final String wireName = 'DummyAlertRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DummyAlertRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.timeStamp;
    if (value != null) {
      result
        ..add('TimeStamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.severity;
    if (value != null) {
      result
        ..add('Severity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sourceIP;
    if (value != null) {
      result
        ..add('SourceIP')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.region;
    if (value != null) {
      result
        ..add('Region')
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
  DummyAlertRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DummyAlertRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'TimeStamp':
          result.timeStamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Severity':
          result.severity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'SourceIP':
          result.sourceIP = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Region':
          result.region = serializers.deserialize(value,
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

class _$DummyAlertRecord extends DummyAlertRecord {
  @override
  final DateTime? timeStamp;
  @override
  final int? severity;
  @override
  final String? sourceIP;
  @override
  final String? region;
  @override
  final bool? isFlagged;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DummyAlertRecord(
          [void Function(DummyAlertRecordBuilder)? updates]) =>
      (new DummyAlertRecordBuilder()..update(updates))._build();

  _$DummyAlertRecord._(
      {this.timeStamp,
      this.severity,
      this.sourceIP,
      this.region,
      this.isFlagged,
      this.ffRef})
      : super._();

  @override
  DummyAlertRecord rebuild(void Function(DummyAlertRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DummyAlertRecordBuilder toBuilder() =>
      new DummyAlertRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DummyAlertRecord &&
        timeStamp == other.timeStamp &&
        severity == other.severity &&
        sourceIP == other.sourceIP &&
        region == other.region &&
        isFlagged == other.isFlagged &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, timeStamp.hashCode), severity.hashCode),
                    sourceIP.hashCode),
                region.hashCode),
            isFlagged.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DummyAlertRecord')
          ..add('timeStamp', timeStamp)
          ..add('severity', severity)
          ..add('sourceIP', sourceIP)
          ..add('region', region)
          ..add('isFlagged', isFlagged)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DummyAlertRecordBuilder
    implements Builder<DummyAlertRecord, DummyAlertRecordBuilder> {
  _$DummyAlertRecord? _$v;

  DateTime? _timeStamp;
  DateTime? get timeStamp => _$this._timeStamp;
  set timeStamp(DateTime? timeStamp) => _$this._timeStamp = timeStamp;

  int? _severity;
  int? get severity => _$this._severity;
  set severity(int? severity) => _$this._severity = severity;

  String? _sourceIP;
  String? get sourceIP => _$this._sourceIP;
  set sourceIP(String? sourceIP) => _$this._sourceIP = sourceIP;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  bool? _isFlagged;
  bool? get isFlagged => _$this._isFlagged;
  set isFlagged(bool? isFlagged) => _$this._isFlagged = isFlagged;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DummyAlertRecordBuilder() {
    DummyAlertRecord._initializeBuilder(this);
  }

  DummyAlertRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeStamp = $v.timeStamp;
      _severity = $v.severity;
      _sourceIP = $v.sourceIP;
      _region = $v.region;
      _isFlagged = $v.isFlagged;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DummyAlertRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DummyAlertRecord;
  }

  @override
  void update(void Function(DummyAlertRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DummyAlertRecord build() => _build();

  _$DummyAlertRecord _build() {
    final _$result = _$v ??
        new _$DummyAlertRecord._(
            timeStamp: timeStamp,
            severity: severity,
            sourceIP: sourceIP,
            region: region,
            isFlagged: isFlagged,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
