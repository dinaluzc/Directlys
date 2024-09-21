import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InicioRecord extends FirestoreRecord {
  InicioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "industry" field.
  String? _industry;
  String get industry => _industry ?? '';
  bool hasIndustry() => _industry != null;

  // "business_name" field.
  String? _businessName;
  String get businessName => _businessName ?? '';
  bool hasBusinessName() => _businessName != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _industry = snapshotData['industry'] as String?;
    _businessName = snapshotData['business_name'] as String?;
    _startDate = snapshotData['start_date'] as DateTime?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _duration = snapshotData['duration'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _endDate = snapshotData['end_date'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('inicio');

  static Stream<InicioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InicioRecord.fromSnapshot(s));

  static Future<InicioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InicioRecord.fromSnapshot(s));

  static InicioRecord fromSnapshot(DocumentSnapshot snapshot) => InicioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InicioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InicioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InicioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InicioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInicioRecordData({
  String? industry,
  String? businessName,
  DateTime? startDate,
  String? title,
  String? description,
  String? duration,
  DateTime? createdAt,
  String? email,
  String? photoUrl,
  DateTime? createdTime,
  DateTime? endDate,
  String? displayName,
  String? uid,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'industry': industry,
      'business_name': businessName,
      'start_date': startDate,
      'title': title,
      'description': description,
      'duration': duration,
      'created_at': createdAt,
      'email': email,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'end_date': endDate,
      'display_name': displayName,
      'uid': uid,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class InicioRecordDocumentEquality implements Equality<InicioRecord> {
  const InicioRecordDocumentEquality();

  @override
  bool equals(InicioRecord? e1, InicioRecord? e2) {
    return e1?.industry == e2?.industry &&
        e1?.businessName == e2?.businessName &&
        e1?.startDate == e2?.startDate &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.duration == e2?.duration &&
        e1?.createdAt == e2?.createdAt &&
        e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.endDate == e2?.endDate &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(InicioRecord? e) => const ListEquality().hash([
        e?.industry,
        e?.businessName,
        e?.startDate,
        e?.title,
        e?.description,
        e?.duration,
        e?.createdAt,
        e?.email,
        e?.photoUrl,
        e?.createdTime,
        e?.endDate,
        e?.displayName,
        e?.uid,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is InicioRecord;
}
