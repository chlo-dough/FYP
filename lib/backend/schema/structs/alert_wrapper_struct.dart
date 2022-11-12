import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'alert_wrapper_struct.g.dart';

abstract class AlertWrapperStruct
    implements Built<AlertWrapperStruct, AlertWrapperStructBuilder> {
  static Serializer<AlertWrapperStruct> get serializer =>
      _$alertWrapperStructSerializer;

  String? get action;

  String? get category;

  int? get severity;

  String? get isFlagged;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(AlertWrapperStructBuilder builder) => builder
    ..action = ''
    ..category = ''
    ..severity = 0
    ..isFlagged = ''
    ..firestoreUtilData = FirestoreUtilData();

  AlertWrapperStruct._();
  factory AlertWrapperStruct(
          [void Function(AlertWrapperStructBuilder) updates]) =
      _$AlertWrapperStruct;
}

AlertWrapperStruct createAlertWrapperStruct({
  String? action,
  String? category,
  int? severity,
  String? isFlagged,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AlertWrapperStruct(
      (a) => a
        ..action = action
        ..category = category
        ..severity = severity
        ..isFlagged = isFlagged
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

AlertWrapperStruct? updateAlertWrapperStruct(
  AlertWrapperStruct? alertWrapper, {
  bool clearUnsetFields = true,
}) =>
    alertWrapper != null
        ? (alertWrapper.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addAlertWrapperStructData(
  Map<String, dynamic> firestoreData,
  AlertWrapperStruct? alertWrapper,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (alertWrapper == null) {
    return;
  }
  if (alertWrapper.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && alertWrapper.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final alertWrapperData =
      getAlertWrapperFirestoreData(alertWrapper, forFieldValue);
  final nestedData =
      alertWrapperData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = alertWrapper.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getAlertWrapperFirestoreData(
  AlertWrapperStruct? alertWrapper, [
  bool forFieldValue = false,
]) {
  if (alertWrapper == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(AlertWrapperStruct.serializer, alertWrapper);

  // Add any Firestore field values
  alertWrapper.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAlertWrapperListFirestoreData(
  List<AlertWrapperStruct>? alertWrappers,
) =>
    alertWrappers?.map((a) => getAlertWrapperFirestoreData(a, true)).toList() ??
    [];
