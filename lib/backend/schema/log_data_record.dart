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

  String? get proto;

  @BuiltValueField(wireName: 'uid_ref')
  String? get uidRef;

  AlertWrapperStruct get alert;

  @BuiltValueField(wireName: 'src_port')
  int? get srcPort;

  @BuiltValueField(wireName: 'dest_port')
  int? get destPort;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LogDataRecordBuilder builder) => builder
    ..srcIp = ''
    ..destIp = ''
    ..proto = ''
    ..uidRef = ''
    ..alert = AlertWrapperStructBuilder()
    ..srcPort = 0
    ..destPort = 0;

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
  String? proto,
  String? uidRef,
  AlertWrapperStruct? alert,
  int? srcPort,
  int? destPort,
}) {
  final firestoreData = serializers.toFirestore(
    LogDataRecord.serializer,
    LogDataRecord(
      (l) => l
        ..timestamp = timestamp
        ..srcIp = srcIp
        ..destIp = destIp
        ..proto = proto
        ..uidRef = uidRef
        ..alert = AlertWrapperStructBuilder()
        ..srcPort = srcPort
        ..destPort = destPort,
    ),
  );

  // Handle nested data for "alert" field.
  addAlertWrapperStructData(firestoreData, alert, 'alert');

  return firestoreData;
}
