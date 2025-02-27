import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistrogeneralRecord extends FirestoreRecord {
  RegistrogeneralRecord._(
    super.reference,
    super.data,
  ) {
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

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _admin = snapshotData['admin'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registrogeneral');

  static Stream<RegistrogeneralRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistrogeneralRecord.fromSnapshot(s));

  static Future<RegistrogeneralRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegistrogeneralRecord.fromSnapshot(s));

  static RegistrogeneralRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistrogeneralRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistrogeneralRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistrogeneralRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistrogeneralRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistrogeneralRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistrogeneralRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? admin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'admin': admin,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistrogeneralRecordDocumentEquality
    implements Equality<RegistrogeneralRecord> {
  const RegistrogeneralRecordDocumentEquality();

  @override
  bool equals(RegistrogeneralRecord? e1, RegistrogeneralRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.admin == e2?.admin;
  }

  @override
  int hash(RegistrogeneralRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.admin
      ]);

  @override
  bool isValidKey(Object? o) => o is RegistrogeneralRecord;
}
