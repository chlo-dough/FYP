import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ml_data_record.g.dart';

abstract class MlDataRecord
    implements Built<MlDataRecord, MlDataRecordBuilder> {
  static Serializer<MlDataRecord> get serializer => _$mlDataRecordSerializer;

  DateTime? get timestamp;

  String? get source;

  String? get target;

  String? get type;

  String? get content;

  String? get email;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MlDataRecordBuilder builder) => builder
    ..source = ''
    ..target = ''
    ..type = ''
    ..content = ''
    ..email = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ml_data');

  static Stream<MlDataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MlDataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MlDataRecord._();
  factory MlDataRecord([void Function(MlDataRecordBuilder) updates]) =
      _$MlDataRecord;

  static MlDataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMlDataRecordData({
  DateTime? timestamp,
  String? source,
  String? target,
  String? type,
  String? content,
  String? email,
}) {
  final firestoreData = serializers.toFirestore(
    MlDataRecord.serializer,
    MlDataRecord(
      (m) => m
        ..timestamp = timestamp
        ..source = source
        ..target = target
        ..type = type
        ..content = content
        ..email = email,
    ),
  );

  return firestoreData;
}
