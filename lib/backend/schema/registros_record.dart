import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistrosRecord extends FirestoreRecord {
  RegistrosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  bool hasAddress() => _address != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "archived" field.
  bool? _archived;
  bool get archived => _archived ?? false;
  bool hasArchived() => _archived != null;

  // "default_address" field.
  bool? _defaultAddress;
  bool get defaultAddress => _defaultAddress ?? false;
  bool hasDefaultAddress() => _defaultAddress != null;

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
    _address = AddressStruct.maybeFromMap(snapshotData['address']);
    _owner = snapshotData['owner'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _archived = snapshotData['archived'] as bool?;
    _defaultAddress = snapshotData['default_address'] as bool?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registros');

  static Stream<RegistrosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistrosRecord.fromSnapshot(s));

  static Future<RegistrosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegistrosRecord.fromSnapshot(s));

  static RegistrosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistrosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistrosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistrosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistrosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistrosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistrosRecordData({
  AddressStruct? address,
  DocumentReference? owner,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? archived,
  bool? defaultAddress,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'address': AddressStruct().toMap(),
      'owner': owner,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'archived': archived,
      'default_address': defaultAddress,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  return firestoreData;
}

class RegistrosRecordDocumentEquality implements Equality<RegistrosRecord> {
  const RegistrosRecordDocumentEquality();

  @override
  bool equals(RegistrosRecord? e1, RegistrosRecord? e2) {
    return e1?.address == e2?.address &&
        e1?.owner == e2?.owner &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.archived == e2?.archived &&
        e1?.defaultAddress == e2?.defaultAddress &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(RegistrosRecord? e) => const ListEquality().hash([
        e?.address,
        e?.owner,
        e?.createdAt,
        e?.modifiedAt,
        e?.archived,
        e?.defaultAddress,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is RegistrosRecord;
}
