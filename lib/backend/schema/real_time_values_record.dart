import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RealTimeValuesRecord extends FirestoreRecord {
  RealTimeValuesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "heart_rate" field.
  int? _heartRate;
  int get heartRate => _heartRate ?? 0;
  bool hasHeartRate() => _heartRate != null;

  // "humidity" field.
  int? _humidity;
  int get humidity => _humidity ?? 0;
  bool hasHumidity() => _humidity != null;

  // "posture" field.
  String? _posture;
  String get posture => _posture ?? '';
  bool hasPosture() => _posture != null;

  // "speed" field.
  double? _speed;
  double get speed => _speed ?? 0.0;
  bool hasSpeed() => _speed != null;

  // "spo2" field.
  int? _spo2;
  int get spo2 => _spo2 ?? 0;
  bool hasSpo2() => _spo2 != null;

  // "temperature" field.
  double? _temperature;
  double get temperature => _temperature ?? 0.0;
  bool hasTemperature() => _temperature != null;

  // "x_pos" field.
  double? _xPos;
  double get xPos => _xPos ?? 0.0;
  bool hasXPos() => _xPos != null;

  // "y_pos" field.
  double? _yPos;
  double get yPos => _yPos ?? 0.0;
  bool hasYPos() => _yPos != null;

  // "z_pos" field.
  double? _zPos;
  double get zPos => _zPos ?? 0.0;
  bool hasZPos() => _zPos != null;

  // "user_ref" field.
  String? _userRef;
  String get userRef => _userRef ?? '';
  bool hasUserRef() => _userRef != null;

  // "currentDate" field.
  DateTime? _currentDate;
  DateTime? get currentDate => _currentDate;
  bool hasCurrentDate() => _currentDate != null;

  void _initializeFields() {
    _heartRate = castToType<int>(snapshotData['heart_rate']);
    _humidity = castToType<int>(snapshotData['humidity']);
    _posture = snapshotData['posture'] as String?;
    _speed = castToType<double>(snapshotData['speed']);
    _spo2 = castToType<int>(snapshotData['spo2']);
    _temperature = castToType<double>(snapshotData['temperature']);
    _xPos = castToType<double>(snapshotData['x_pos']);
    _yPos = castToType<double>(snapshotData['y_pos']);
    _zPos = castToType<double>(snapshotData['z_pos']);
    _userRef = snapshotData['user_ref'] as String?;
    _currentDate = snapshotData['currentDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Real-time-Values');

  static Stream<RealTimeValuesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RealTimeValuesRecord.fromSnapshot(s));

  static Future<RealTimeValuesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RealTimeValuesRecord.fromSnapshot(s));

  static RealTimeValuesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RealTimeValuesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RealTimeValuesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RealTimeValuesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RealTimeValuesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RealTimeValuesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRealTimeValuesRecordData({
  int? heartRate,
  int? humidity,
  String? posture,
  double? speed,
  int? spo2,
  double? temperature,
  double? xPos,
  double? yPos,
  double? zPos,
  String? userRef,
  DateTime? currentDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'heart_rate': heartRate,
      'humidity': humidity,
      'posture': posture,
      'speed': speed,
      'spo2': spo2,
      'temperature': temperature,
      'x_pos': xPos,
      'y_pos': yPos,
      'z_pos': zPos,
      'user_ref': userRef,
      'currentDate': currentDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class RealTimeValuesRecordDocumentEquality
    implements Equality<RealTimeValuesRecord> {
  const RealTimeValuesRecordDocumentEquality();

  @override
  bool equals(RealTimeValuesRecord? e1, RealTimeValuesRecord? e2) {
    return e1?.heartRate == e2?.heartRate &&
        e1?.humidity == e2?.humidity &&
        e1?.posture == e2?.posture &&
        e1?.speed == e2?.speed &&
        e1?.spo2 == e2?.spo2 &&
        e1?.temperature == e2?.temperature &&
        e1?.xPos == e2?.xPos &&
        e1?.yPos == e2?.yPos &&
        e1?.zPos == e2?.zPos &&
        e1?.userRef == e2?.userRef &&
        e1?.currentDate == e2?.currentDate;
  }

  @override
  int hash(RealTimeValuesRecord? e) => const ListEquality().hash([
        e?.heartRate,
        e?.humidity,
        e?.posture,
        e?.speed,
        e?.spo2,
        e?.temperature,
        e?.xPos,
        e?.yPos,
        e?.zPos,
        e?.userRef,
        e?.currentDate
      ]);

  @override
  bool isValidKey(Object? o) => o is RealTimeValuesRecord;
}
