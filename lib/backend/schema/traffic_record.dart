import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'traffic_record.g.dart';

abstract class TrafficRecord
    implements Built<TrafficRecord, TrafficRecordBuilder> {
  static Serializer<TrafficRecord> get serializer => _$trafficRecordSerializer;

  int? get freq;

  String? get email;

  DateTime? get interval;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TrafficRecordBuilder builder) => builder
    ..freq = 0
    ..email = '';

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
  int? freq,
  String? email,
  DateTime? interval,
}) {
  final firestoreData = serializers.toFirestore(
    TrafficRecord.serializer,
    TrafficRecord(
      (t) => t
        ..freq = freq
        ..email = email
        ..interval = interval,
    ),
  );

  return firestoreData;
}
