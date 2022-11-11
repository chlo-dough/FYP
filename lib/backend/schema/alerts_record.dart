import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'alerts_record.g.dart';

abstract class AlertsRecord
    implements Built<AlertsRecord, AlertsRecordBuilder> {
  static Serializer<AlertsRecord> get serializer => _$alertsRecordSerializer;

  DateTime? get timestamp;

  int? get priority;

  String? get source;

  bool? get isFlagged;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(AlertsRecordBuilder builder) => builder
    ..priority = 0
    ..source = ''
    ..isFlagged = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('alerts')
          : FirebaseFirestore.instance.collectionGroup('alerts');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('alerts').doc();

  static Stream<AlertsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AlertsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AlertsRecord._();
  factory AlertsRecord([void Function(AlertsRecordBuilder) updates]) =
      _$AlertsRecord;

  static AlertsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAlertsRecordData({
  DateTime? timestamp,
  int? priority,
  String? source,
  bool? isFlagged,
}) {
  final firestoreData = serializers.toFirestore(
    AlertsRecord.serializer,
    AlertsRecord(
      (a) => a
        ..timestamp = timestamp
        ..priority = priority
        ..source = source
        ..isFlagged = isFlagged,
    ),
  );

  return firestoreData;
}
