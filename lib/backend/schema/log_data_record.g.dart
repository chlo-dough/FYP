// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_data_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LogDataRecord> _$logDataRecordSerializer =
    new _$LogDataRecordSerializer();

class _$LogDataRecordSerializer implements StructuredSerializer<LogDataRecord> {
  @override
  final Iterable<Type> types = const [LogDataRecord, _$LogDataRecord];
  @override
  final String wireName = 'LogDataRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LogDataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'alert',
      serializers.serialize(object.alert,
          specifiedType: const FullType(AlertWrapperStruct)),
    ];
    Object? value;
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.srcIp;
    if (value != null) {
      result
        ..add('src_ip')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.destIp;
    if (value != null) {
      result
        ..add('dest_ip')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proto;
    if (value != null) {
      result
        ..add('proto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uidRef;
    if (value != null) {
      result
        ..add('uid_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.srcPort;
    if (value != null) {
      result
        ..add('src_port')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.destPort;
    if (value != null) {
      result
        ..add('dest_port')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  LogDataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LogDataRecordBuilder();

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
        case 'src_ip':
          result.srcIp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dest_ip':
          result.destIp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'proto':
          result.proto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid_ref':
          result.uidRef = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'alert':
          result.alert.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AlertWrapperStruct))!
              as AlertWrapperStruct);
          break;
        case 'src_port':
          result.srcPort = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dest_port':
          result.destPort = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$LogDataRecord extends LogDataRecord {
  @override
  final DateTime? timestamp;
  @override
  final String? srcIp;
  @override
  final String? destIp;
  @override
  final String? proto;
  @override
  final String? uidRef;
  @override
  final AlertWrapperStruct alert;
  @override
  final int? srcPort;
  @override
  final int? destPort;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LogDataRecord([void Function(LogDataRecordBuilder)? updates]) =>
      (new LogDataRecordBuilder()..update(updates))._build();

  _$LogDataRecord._(
      {this.timestamp,
      this.srcIp,
      this.destIp,
      this.proto,
      this.uidRef,
      required this.alert,
      this.srcPort,
      this.destPort,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(alert, r'LogDataRecord', 'alert');
  }

  @override
  LogDataRecord rebuild(void Function(LogDataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogDataRecordBuilder toBuilder() => new LogDataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogDataRecord &&
        timestamp == other.timestamp &&
        srcIp == other.srcIp &&
        destIp == other.destIp &&
        proto == other.proto &&
        uidRef == other.uidRef &&
        alert == other.alert &&
        srcPort == other.srcPort &&
        destPort == other.destPort &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, timestamp.hashCode), srcIp.hashCode),
                                destIp.hashCode),
                            proto.hashCode),
                        uidRef.hashCode),
                    alert.hashCode),
                srcPort.hashCode),
            destPort.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LogDataRecord')
          ..add('timestamp', timestamp)
          ..add('srcIp', srcIp)
          ..add('destIp', destIp)
          ..add('proto', proto)
          ..add('uidRef', uidRef)
          ..add('alert', alert)
          ..add('srcPort', srcPort)
          ..add('destPort', destPort)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LogDataRecordBuilder
    implements Builder<LogDataRecord, LogDataRecordBuilder> {
  _$LogDataRecord? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  String? _srcIp;
  String? get srcIp => _$this._srcIp;
  set srcIp(String? srcIp) => _$this._srcIp = srcIp;

  String? _destIp;
  String? get destIp => _$this._destIp;
  set destIp(String? destIp) => _$this._destIp = destIp;

  String? _proto;
  String? get proto => _$this._proto;
  set proto(String? proto) => _$this._proto = proto;

  String? _uidRef;
  String? get uidRef => _$this._uidRef;
  set uidRef(String? uidRef) => _$this._uidRef = uidRef;

  AlertWrapperStructBuilder? _alert;
  AlertWrapperStructBuilder get alert =>
      _$this._alert ??= new AlertWrapperStructBuilder();
  set alert(AlertWrapperStructBuilder? alert) => _$this._alert = alert;

  int? _srcPort;
  int? get srcPort => _$this._srcPort;
  set srcPort(int? srcPort) => _$this._srcPort = srcPort;

  int? _destPort;
  int? get destPort => _$this._destPort;
  set destPort(int? destPort) => _$this._destPort = destPort;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LogDataRecordBuilder() {
    LogDataRecord._initializeBuilder(this);
  }

  LogDataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _srcIp = $v.srcIp;
      _destIp = $v.destIp;
      _proto = $v.proto;
      _uidRef = $v.uidRef;
      _alert = $v.alert.toBuilder();
      _srcPort = $v.srcPort;
      _destPort = $v.destPort;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogDataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogDataRecord;
  }

  @override
  void update(void Function(LogDataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogDataRecord build() => _build();

  _$LogDataRecord _build() {
    _$LogDataRecord _$result;
    try {
      _$result = _$v ??
          new _$LogDataRecord._(
              timestamp: timestamp,
              srcIp: srcIp,
              destIp: destIp,
              proto: proto,
              uidRef: uidRef,
              alert: alert.build(),
              srcPort: srcPort,
              destPort: destPort,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alert';
        alert.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LogDataRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
