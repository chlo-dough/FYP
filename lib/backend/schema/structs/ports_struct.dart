import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'ports_struct.g.dart';

abstract class PortsStruct implements Built<PortsStruct, PortsStructBuilder> {
  static Serializer<PortsStruct> get serializer => _$portsStructSerializer;

  @BuiltValueField(wireName: 'src_port')
  int? get srcPort;

  @BuiltValueField(wireName: 'dest_port')
  int? get destPort;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(PortsStructBuilder builder) => builder
    ..srcPort = 0
    ..destPort = 0
    ..firestoreUtilData = FirestoreUtilData();

  PortsStruct._();
  factory PortsStruct([void Function(PortsStructBuilder) updates]) =
      _$PortsStruct;
}

PortsStruct createPortsStruct({
  int? srcPort,
  int? destPort,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PortsStruct(
      (p) => p
        ..srcPort = srcPort
        ..destPort = destPort
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

PortsStruct? updatePortsStruct(
  PortsStruct? ports, {
  bool clearUnsetFields = true,
}) =>
    ports != null
        ? (ports.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addPortsStructData(
  Map<String, dynamic> firestoreData,
  PortsStruct? ports,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ports == null) {
    return;
  }
  if (ports.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && ports.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final portsData = getPortsFirestoreData(ports, forFieldValue);
  final nestedData = portsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = ports.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getPortsFirestoreData(
  PortsStruct? ports, [
  bool forFieldValue = false,
]) {
  if (ports == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(PortsStruct.serializer, ports);

  // Add any Firestore field values
  ports.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPortsListFirestoreData(
  List<PortsStruct>? portss,
) =>
    portss?.map((p) => getPortsFirestoreData(p, true)).toList() ?? [];
