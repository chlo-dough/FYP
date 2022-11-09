import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'dummy_alert_record.g.dart';

abstract class DummyAlertRecord
    implements Built<DummyAlertRecord, DummyAlertRecordBuilder> {
  static Serializer<DummyAlertRecord> get serializer =>
      _$dummyAlertRecordSerializer;

  @BuiltValueField(wireName: 'TimeStamp')
  DateTime? get timeStamp;

  @BuiltValueField(wireName: 'Severity')
  int? get severity;

  @BuiltValueField(wireName: 'SourceIP')
  String? get sourceIP;

  @BuiltValueField(wireName: 'Region')
  String? get region;

  bool? get isFlagged;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DummyAlertRecordBuilder builder) => builder
    ..severity = 0
    ..sourceIP = ''
    ..region = ''
    ..isFlagged = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dummyAlert');

  static Stream<DummyAlertRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DummyAlertRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DummyAlertRecord._();
  factory DummyAlertRecord([void Function(DummyAlertRecordBuilder) updates]) =
      _$DummyAlertRecord;

  static DummyAlertRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDummyAlertRecordData({
  DateTime? timeStamp,
  int? severity,
  String? sourceIP,
  String? region,
  bool? isFlagged,
}) {
  final firestoreData = serializers.toFirestore(
    DummyAlertRecord.serializer,
    DummyAlertRecord(
      (d) => d
        ..timeStamp = timeStamp
        ..severity = severity
        ..sourceIP = sourceIP
        ..region = region
        ..isFlagged = isFlagged,
    ),
  );

  return firestoreData;
}
