// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traffic_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TrafficRecord> _$trafficRecordSerializer =
    new _$TrafficRecordSerializer();

class _$TrafficRecordSerializer implements StructuredSerializer<TrafficRecord> {
  @override
  final Iterable<Type> types = const [TrafficRecord, _$TrafficRecord];
  @override
  final String wireName = 'TrafficRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TrafficRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.freq;
    if (value != null) {
      result
        ..add('freq')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.interval;
    if (value != null) {
      result
        ..add('interval')
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
  TrafficRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrafficRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'freq':
          result.freq = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'interval':
          result.interval = serializers.deserialize(value,
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

class _$TrafficRecord extends TrafficRecord {
  @override
  final String? email;
  @override
  final int? freq;
  @override
  final int? interval;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TrafficRecord([void Function(TrafficRecordBuilder)? updates]) =>
      (new TrafficRecordBuilder()..update(updates))._build();

  _$TrafficRecord._({this.email, this.freq, this.interval, this.ffRef})
      : super._();

  @override
  TrafficRecord rebuild(void Function(TrafficRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrafficRecordBuilder toBuilder() => new TrafficRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrafficRecord &&
        email == other.email &&
        freq == other.freq &&
        interval == other.interval &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, email.hashCode), freq.hashCode), interval.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrafficRecord')
          ..add('email', email)
          ..add('freq', freq)
          ..add('interval', interval)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TrafficRecordBuilder
    implements Builder<TrafficRecord, TrafficRecordBuilder> {
  _$TrafficRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  int? _freq;
  int? get freq => _$this._freq;
  set freq(int? freq) => _$this._freq = freq;

  int? _interval;
  int? get interval => _$this._interval;
  set interval(int? interval) => _$this._interval = interval;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TrafficRecordBuilder() {
    TrafficRecord._initializeBuilder(this);
  }

  TrafficRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _freq = $v.freq;
      _interval = $v.interval;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrafficRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrafficRecord;
  }

  @override
  void update(void Function(TrafficRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrafficRecord build() => _build();

  _$TrafficRecord _build() {
    final _$result = _$v ??
        new _$TrafficRecord._(
            email: email, freq: freq, interval: interval, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
