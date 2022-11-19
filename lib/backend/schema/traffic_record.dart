import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'traffic_record.g.dart';

abstract class TrafficRecord
    implements Built<TrafficRecord, TrafficRecordBuilder> {
  static Serializer<TrafficRecord> get serializer => _$trafficRecordSerializer;

  String? get email;

  int? get freq;

  int? get interval;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TrafficRecordBuilder builder) => builder
    ..email = ''
    ..freq = 0
    ..interval = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('traffic');

  static Stream<TrafficRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TrafficRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TrafficRecord._();
  factory TrafficRecord([void Function(TrafficRecordBuilder) updates]) =
      _$TrafficRecord;

  static TrafficRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTrafficRecordData({
  String? email,
  int? freq,
  int? interval,
}) {
  final firestoreData = serializers.toFirestore(
    TrafficRecord.serializer,
    TrafficRecord(
      (t) => t
        ..email = email
        ..freq = freq
        ..interval = interval,
    ),
  );

  return firestoreData;
}
