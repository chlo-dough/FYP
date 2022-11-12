// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ports_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PortsStruct> _$portsStructSerializer = new _$PortsStructSerializer();

class _$PortsStructSerializer implements StructuredSerializer<PortsStruct> {
  @override
  final Iterable<Type> types = const [PortsStruct, _$PortsStruct];
  @override
  final String wireName = 'PortsStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, PortsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
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
    return result;
  }

  @override
  PortsStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PortsStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'src_port':
          result.srcPort = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dest_port':
          result.destPort = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$PortsStruct extends PortsStruct {
  @override
  final int? srcPort;
  @override
  final int? destPort;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$PortsStruct([void Function(PortsStructBuilder)? updates]) =>
      (new PortsStructBuilder()..update(updates))._build();

  _$PortsStruct._(
      {this.srcPort, this.destPort, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'PortsStruct', 'firestoreUtilData');
  }

  @override
  PortsStruct rebuild(void Function(PortsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PortsStructBuilder toBuilder() => new PortsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PortsStruct &&
        srcPort == other.srcPort &&
        destPort == other.destPort &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, srcPort.hashCode), destPort.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PortsStruct')
          ..add('srcPort', srcPort)
          ..add('destPort', destPort)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class PortsStructBuilder implements Builder<PortsStruct, PortsStructBuilder> {
  _$PortsStruct? _$v;

  int? _srcPort;
  int? get srcPort => _$this._srcPort;
  set srcPort(int? srcPort) => _$this._srcPort = srcPort;

  int? _destPort;
  int? get destPort => _$this._destPort;
  set destPort(int? destPort) => _$this._destPort = destPort;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  PortsStructBuilder() {
    PortsStruct._initializeBuilder(this);
  }

  PortsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _srcPort = $v.srcPort;
      _destPort = $v.destPort;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PortsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PortsStruct;
  }

  @override
  void update(void Function(PortsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PortsStruct build() => _build();

  _$PortsStruct _build() {
    final _$result = _$v ??
        new _$PortsStruct._(
            srcPort: srcPort,
            destPort: destPort,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'PortsStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
