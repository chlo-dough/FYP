// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dummy_alerts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DummyAlertsRecord> _$dummyAlertsRecordSerializer =
    new _$DummyAlertsRecordSerializer();

class _$DummyAlertsRecordSerializer
    implements StructuredSerializer<DummyAlertsRecord> {
  @override
  final Iterable<Type> types = const [DummyAlertsRecord, _$DummyAlertsRecord];
  @override
  final String wireName = 'DummyAlertsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DummyAlertsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ip;
    if (value != null) {
      result
        ..add('IP')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.flag;
    if (value != null) {
      result
        ..add('flag')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.uidRef;
    if (value != null) {
      result
        ..add('uid_ref')
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
  DummyAlertsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DummyAlertsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'IP':
          result.ip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'flag':
          result.flag = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'uid_ref':
          result.uidRef = serializers.deserialize(value,
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

class _$DummyAlertsRecord extends DummyAlertsRecord {
  @override
  final String? ip;
  @override
  final DateTime? time;
  @override
  final bool? flag;
  @override
  final String? uidRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DummyAlertsRecord(
          [void Function(DummyAlertsRecordBuilder)? updates]) =>
      (new DummyAlertsRecordBuilder()..update(updates))._build();

  _$DummyAlertsRecord._(
      {this.ip, this.time, this.flag, this.uidRef, this.ffRef})
      : super._();

  @override
  DummyAlertsRecord rebuild(void Function(DummyAlertsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DummyAlertsRecordBuilder toBuilder() =>
      new DummyAlertsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DummyAlertsRecord &&
        ip == other.ip &&
        time == other.time &&
        flag == other.flag &&
        uidRef == other.uidRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, ip.hashCode), time.hashCode), flag.hashCode),
            uidRef.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DummyAlertsRecord')
          ..add('ip', ip)
          ..add('time', time)
          ..add('flag', flag)
          ..add('uidRef', uidRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DummyAlertsRecordBuilder
    implements Builder<DummyAlertsRecord, DummyAlertsRecordBuilder> {
  _$DummyAlertsRecord? _$v;

  String? _ip;
  String? get ip => _$this._ip;
  set ip(String? ip) => _$this._ip = ip;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  bool? _flag;
  bool? get flag => _$this._flag;
  set flag(bool? flag) => _$this._flag = flag;

  String? _uidRef;
  String? get uidRef => _$this._uidRef;
  set uidRef(String? uidRef) => _$this._uidRef = uidRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DummyAlertsRecordBuilder() {
    DummyAlertsRecord._initializeBuilder(this);
  }

  DummyAlertsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ip = $v.ip;
      _time = $v.time;
      _flag = $v.flag;
      _uidRef = $v.uidRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DummyAlertsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DummyAlertsRecord;
  }

  @override
  void update(void Function(DummyAlertsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DummyAlertsRecord build() => _build();

  _$DummyAlertsRecord _build() {
    final _$result = _$v ??
        new _$DummyAlertsRecord._(
            ip: ip, time: time, flag: flag, uidRef: uidRef, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
