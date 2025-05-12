import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "dateOfStoke" field.
  DateTime? _dateOfStoke;
  DateTime? get dateOfStoke => _dateOfStoke;
  bool hasDateOfStoke() => _dateOfStoke != null;

  // "dateOfAdmission" field.
  DateTime? _dateOfAdmission;
  DateTime? get dateOfAdmission => _dateOfAdmission;
  bool hasDateOfAdmission() => _dateOfAdmission != null;

  // "dateOfDischarge" field.
  DateTime? _dateOfDischarge;
  DateTime? get dateOfDischarge => _dateOfDischarge;
  bool hasDateOfDischarge() => _dateOfDischarge != null;

  // "nameOfDoctor" field.
  String? _nameOfDoctor;
  String get nameOfDoctor => _nameOfDoctor ?? '';
  bool hasNameOfDoctor() => _nameOfDoctor != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "heartRate" field.
  int? _heartRate;
  int get heartRate => _heartRate ?? 0;
  bool hasHeartRate() => _heartRate != null;

  // "humidity" field.
  double? _humidity;
  double get humidity => _humidity ?? 0.0;
  bool hasHumidity() => _humidity != null;

  // "spo2" field.
  double? _spo2;
  double get spo2 => _spo2 ?? 0.0;
  bool hasSpo2() => _spo2 != null;

  // "temparature" field.
  double? _temparature;
  double get temparature => _temparature ?? 0.0;
  bool hasTemparature() => _temparature != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _gender = snapshotData['gender'] as String?;
    _address = snapshotData['address'] as String?;
    _dateOfStoke = snapshotData['dateOfStoke'] as DateTime?;
    _dateOfAdmission = snapshotData['dateOfAdmission'] as DateTime?;
    _dateOfDischarge = snapshotData['dateOfDischarge'] as DateTime?;
    _nameOfDoctor = snapshotData['nameOfDoctor'] as String?;
    _uid = snapshotData['uid'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _heartRate = castToType<int>(snapshotData['heartRate']);
    _humidity = castToType<double>(snapshotData['humidity']);
    _spo2 = castToType<double>(snapshotData['spo2']);
    _temparature = castToType<double>(snapshotData['temparature']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  DateTime? createdTime,
  String? phoneNumber,
  int? age,
  String? gender,
  String? address,
  DateTime? dateOfStoke,
  DateTime? dateOfAdmission,
  DateTime? dateOfDischarge,
  String? nameOfDoctor,
  String? uid,
  String? photoUrl,
  int? heartRate,
  double? humidity,
  double? spo2,
  double? temparature,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'age': age,
      'gender': gender,
      'address': address,
      'dateOfStoke': dateOfStoke,
      'dateOfAdmission': dateOfAdmission,
      'dateOfDischarge': dateOfDischarge,
      'nameOfDoctor': nameOfDoctor,
      'uid': uid,
      'photo_url': photoUrl,
      'heartRate': heartRate,
      'humidity': humidity,
      'spo2': spo2,
      'temparature': temparature,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.age == e2?.age &&
        e1?.gender == e2?.gender &&
        e1?.address == e2?.address &&
        e1?.dateOfStoke == e2?.dateOfStoke &&
        e1?.dateOfAdmission == e2?.dateOfAdmission &&
        e1?.dateOfDischarge == e2?.dateOfDischarge &&
        e1?.nameOfDoctor == e2?.nameOfDoctor &&
        e1?.uid == e2?.uid &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.heartRate == e2?.heartRate &&
        e1?.humidity == e2?.humidity &&
        e1?.spo2 == e2?.spo2 &&
        e1?.temparature == e2?.temparature;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.createdTime,
        e?.phoneNumber,
        e?.age,
        e?.gender,
        e?.address,
        e?.dateOfStoke,
        e?.dateOfAdmission,
        e?.dateOfDischarge,
        e?.nameOfDoctor,
        e?.uid,
        e?.photoUrl,
        e?.heartRate,
        e?.humidity,
        e?.spo2,
        e?.temparature
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
