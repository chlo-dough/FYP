import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'logs_record.g.dart';

abstract class LogsRecord implements Built<LogsRecord, LogsRecordBuilder> {
  static Serializer<LogsRecord> get serializer => _$logsRecordSerializer;

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

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(LogsRecordBuilder builder) => builder
    ..srcIp = ''
    ..destIp = ''
    ..srcPort = 0
    ..destPort = 0
    ..proto = ''
    ..uidRef = ''
    ..alert = AlertWrapperStructBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('logs')
          : FirebaseFirestore.instance.collectionGroup('logs');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('logs').doc();

  static Stream<LogsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LogsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LogsRecord._();
  factory LogsRecord([void Function(LogsRecordBuilder) updates]) = _$LogsRecord;

  static LogsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLogsRecordData({
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
    LogsRecord.serializer,
    LogsRecord(
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
