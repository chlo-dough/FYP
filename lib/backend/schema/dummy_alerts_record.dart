import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'dummy_alerts_record.g.dart';

abstract class DummyAlertsRecord
    implements Built<DummyAlertsRecord, DummyAlertsRecordBuilder> {
  static Serializer<DummyAlertsRecord> get serializer =>
      _$dummyAlertsRecordSerializer;

  @BuiltValueField(wireName: 'IP')
  String? get ip;

  DateTime? get time;

  bool? get flag;

  @BuiltValueField(wireName: 'uid_ref')
  String? get uidRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DummyAlertsRecordBuilder builder) => builder
    ..ip = ''
    ..flag = false
    ..uidRef = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dummyAlerts');

  static Stream<DummyAlertsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DummyAlertsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DummyAlertsRecord._();
  factory DummyAlertsRecord([void Function(DummyAlertsRecordBuilder) updates]) =
      _$DummyAlertsRecord;

  static DummyAlertsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDummyAlertsRecordData({
  String? ip,
  DateTime? time,
  bool? flag,
  String? uidRef,
}) {
  final firestoreData = serializers.toFirestore(
    DummyAlertsRecord.serializer,
    DummyAlertsRecord(
      (d) => d
        ..ip = ip
        ..time = time
        ..flag = flag
        ..uidRef = uidRef,
    ),
  );

  return firestoreData;
}
