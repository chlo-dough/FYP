import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'log_data_record.g.dart';

abstract class LogDataRecord
    implements Built<LogDataRecord, LogDataRecordBuilder> {
  static Serializer<LogDataRecord> get serializer => _$logDataRecordSerializer;

  DateTime? get timestamp;

  @BuiltValueField(wireName: 'src_ip')
  String? get srcIp;

  @BuiltValueField(wireName: 'dest_ip')
  String? get destIp;

  @BuiltValueField(wireName: 'src_port')
  int? get srcPort;

  @BuiltValueField(wireName: 'dest_port')
  int? get destPort;

  String? get proto;

  @BuiltValueField(wireName: 'uid_ref')
  String? get uidRef;

  AlertWrapperStruct get alert;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LogDataRecordBuilder builder) => builder
    ..srcIp = ''
    ..destIp = ''
    ..srcPort = 0
    ..destPort = 0
    ..proto = ''
    ..uidRef = ''
    ..alert = AlertWrapperStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('logData');

  static Stream<LogDataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LogDataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LogDataRecord._();
  factory LogDataRecord([void Function(LogDataRecordBuilder) updates]) =
      _$LogDataRecord;

  static LogDataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLogDataRecordData({
  DateTime? timestamp,
  String? srcIp,
  String? destIp,
  int? srcPort,
  int? destPort,
  String? proto,
  String? uidRef,
  AlertWrapperStruct? alert,
}) {
  final firestoreData = serializers.toFirestore(
    LogDataRecord.serializer,
    LogDataRecord(
      (l) => l
        ..timestamp = timestamp
        ..srcIp = srcIp
        ..destIp = destIp
        ..srcPort = srcPort
        ..destPort = destPort
        ..proto = proto
        ..uidRef = uidRef
        ..alert = AlertWrapperStructBuilder(),
    ),
  );

  // Handle nested data for "alert" field.
  addAlertWrapperStructData(firestoreData, alert, 'alert');

  return firestoreData;
}
