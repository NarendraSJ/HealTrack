import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicationsRecord extends FirestoreRecord {
  MedicationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dose" field.
  String? _dose;
  String get dose => _dose ?? '';
  bool hasDose() => _dose != null;

  // "medicineName" field.
  String? _medicineName;
  String get medicineName => _medicineName ?? '';
  bool hasMedicineName() => _medicineName != null;

  // "medicationUser" field.
  DocumentReference? _medicationUser;
  DocumentReference? get medicationUser => _medicationUser;
  bool hasMedicationUser() => _medicationUser != null;

  // "medType" field.
  String? _medType;
  String get medType => _medType ?? '';
  bool hasMedType() => _medType != null;

  // "dosageStart" field.
  DateTime? _dosageStart;
  DateTime? get dosageStart => _dosageStart;
  bool hasDosageStart() => _dosageStart != null;

  // "duration" field.
  DateTime? _duration;
  DateTime? get duration => _duration;
  bool hasDuration() => _duration != null;

  void _initializeFields() {
    _dose = snapshotData['dose'] as String?;
    _medicineName = snapshotData['medicineName'] as String?;
    _medicationUser = snapshotData['medicationUser'] as DocumentReference?;
    _medType = snapshotData['medType'] as String?;
    _dosageStart = snapshotData['dosageStart'] as DateTime?;
    _duration = snapshotData['duration'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medications');

  static Stream<MedicationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicationsRecord.fromSnapshot(s));

  static Future<MedicationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedicationsRecord.fromSnapshot(s));

  static MedicationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedicationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedicationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedicationsRecordData({
  String? dose,
  String? medicineName,
  DocumentReference? medicationUser,
  String? medType,
  DateTime? dosageStart,
  DateTime? duration,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dose': dose,
      'medicineName': medicineName,
      'medicationUser': medicationUser,
      'medType': medType,
      'dosageStart': dosageStart,
      'duration': duration,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicationsRecordDocumentEquality implements Equality<MedicationsRecord> {
  const MedicationsRecordDocumentEquality();

  @override
  bool equals(MedicationsRecord? e1, MedicationsRecord? e2) {
    return e1?.dose == e2?.dose &&
        e1?.medicineName == e2?.medicineName &&
        e1?.medicationUser == e2?.medicationUser &&
        e1?.medType == e2?.medType &&
        e1?.dosageStart == e2?.dosageStart &&
        e1?.duration == e2?.duration;
  }

  @override
  int hash(MedicationsRecord? e) => const ListEquality().hash([
        e?.dose,
        e?.medicineName,
        e?.medicationUser,
        e?.medType,
        e?.dosageStart,
        e?.duration
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicationsRecord;
}
