// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_wrapper_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlertWrapperStruct> _$alertWrapperStructSerializer =
    new _$AlertWrapperStructSerializer();

class _$AlertWrapperStructSerializer
    implements StructuredSerializer<AlertWrapperStruct> {
  @override
  final Iterable<Type> types = const [AlertWrapperStruct, _$AlertWrapperStruct];
  @override
  final String wireName = 'AlertWrapperStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AlertWrapperStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.action;
    if (value != null) {
      result
        ..add('action')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.severity;
    if (value != null) {
      result
        ..add('severity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isFlagged;
    if (value != null) {
      result
        ..add('isFlagged')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AlertWrapperStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlertWrapperStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'severity':
          result.severity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isFlagged':
          result.isFlagged = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$AlertWrapperStruct extends AlertWrapperStruct {
  @override
  final String? action;
  @override
  final String? category;
  @override
  final int? severity;
  @override
  final String? isFlagged;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$AlertWrapperStruct(
          [void Function(AlertWrapperStructBuilder)? updates]) =>
      (new AlertWrapperStructBuilder()..update(updates))._build();

  _$AlertWrapperStruct._(
      {this.action,
      this.category,
      this.severity,
      this.isFlagged,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'AlertWrapperStruct', 'firestoreUtilData');
  }

  @override
  AlertWrapperStruct rebuild(
          void Function(AlertWrapperStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlertWrapperStructBuilder toBuilder() =>
      new AlertWrapperStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlertWrapperStruct &&
        action == other.action &&
        category == other.category &&
        severity == other.severity &&
        isFlagged == other.isFlagged &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, action.hashCode), category.hashCode),
                severity.hashCode),
            isFlagged.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlertWrapperStruct')
          ..add('action', action)
          ..add('category', category)
          ..add('severity', severity)
          ..add('isFlagged', isFlagged)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class AlertWrapperStructBuilder
    implements Builder<AlertWrapperStruct, AlertWrapperStructBuilder> {
  _$AlertWrapperStruct? _$v;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  int? _severity;
  int? get severity => _$this._severity;
  set severity(int? severity) => _$this._severity = severity;

  String? _isFlagged;
  String? get isFlagged => _$this._isFlagged;
  set isFlagged(String? isFlagged) => _$this._isFlagged = isFlagged;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  AlertWrapperStructBuilder() {
    AlertWrapperStruct._initializeBuilder(this);
  }

  AlertWrapperStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _category = $v.category;
      _severity = $v.severity;
      _isFlagged = $v.isFlagged;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlertWrapperStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlertWrapperStruct;
  }

  @override
  void update(void Function(AlertWrapperStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlertWrapperStruct build() => _build();

  _$AlertWrapperStruct _build() {
    final _$result = _$v ??
        new _$AlertWrapperStruct._(
            action: action,
            category: category,
            severity: severity,
            isFlagged: isFlagged,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'AlertWrapperStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
