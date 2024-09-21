import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpleocolombiaRecord extends FirestoreRecord {
  EmpleocolombiaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "salary" field.
  double? _salary;
  double get salary => _salary ?? 0.0;
  bool hasSalary() => _salary != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "empresa" field.
  DocumentReference? _empresa;
  DocumentReference? get empresa => _empresa;
  bool hasEmpresa() => _empresa != null;

  // "candidatos" field.
  List<DocumentReference>? _candidatos;
  List<DocumentReference> get candidatos => _candidatos ?? const [];
  bool hasCandidatos() => _candidatos != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

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

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _salary = castToType<double>(snapshotData['salary']);
    _location = snapshotData['location'] as String?;
    _empresa = snapshotData['empresa'] as DocumentReference?;
    _candidatos = getDataList(snapshotData['candidatos']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('empleocolombia');

  static Stream<EmpleocolombiaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmpleocolombiaRecord.fromSnapshot(s));

  static Future<EmpleocolombiaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmpleocolombiaRecord.fromSnapshot(s));

  static EmpleocolombiaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmpleocolombiaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmpleocolombiaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmpleocolombiaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmpleocolombiaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmpleocolombiaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmpleocolombiaRecordData({
  String? title,
  String? description,
  double? salary,
  String? location,
  DocumentReference? empresa,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'salary': salary,
      'location': location,
      'empresa': empresa,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmpleocolombiaRecordDocumentEquality
    implements Equality<EmpleocolombiaRecord> {
  const EmpleocolombiaRecordDocumentEquality();

  @override
  bool equals(EmpleocolombiaRecord? e1, EmpleocolombiaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.salary == e2?.salary &&
        e1?.location == e2?.location &&
        e1?.empresa == e2?.empresa &&
        listEquality.equals(e1?.candidatos, e2?.candidatos) &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(EmpleocolombiaRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.salary,
        e?.location,
        e?.empresa,
        e?.candidatos,
        e?.createdAt,
        e?.updatedAt,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is EmpleocolombiaRecord;
}
