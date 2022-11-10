import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'detail_record.g.dart';

abstract class DetailRecord
    implements Built<DetailRecord, DetailRecordBuilder> {
  static Serializer<DetailRecord> get serializer => _$detailRecordSerializer;

  DateTime? get timestamp;

  String? get source;

  int? get alertScale;

  bool? get isFlagged;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(DetailRecordBuilder builder) => builder
    ..source = ''
    ..alertScale = 0
    ..isFlagged = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('detail')
          : FirebaseFirestore.instance.collectionGroup('detail');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('detail').doc();

  static Stream<DetailRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DetailRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DetailRecord._();
  factory DetailRecord([void Function(DetailRecordBuilder) updates]) =
      _$DetailRecord;

  static DetailRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDetailRecordData({
  DateTime? timestamp,
  String? source,
  int? alertScale,
  bool? isFlagged,
}) {
  final firestoreData = serializers.toFirestore(
    DetailRecord.serializer,
    DetailRecord(
      (d) => d
        ..timestamp = timestamp
        ..source = source
        ..alertScale = alertScale
        ..isFlagged = isFlagged,
    ),
  );

  return firestoreData;
}
