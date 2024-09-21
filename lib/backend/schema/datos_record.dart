import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatosRecord extends FirestoreRecord {
  DatosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "zip_code" field.
  String? _zipCode;
  String get zipCode => _zipCode ?? '';
  bool hasZipCode() => _zipCode != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "birth_date" field.
  DateTime? _birthDate;
  DateTime? get birthDate => _birthDate;
  bool hasBirthDate() => _birthDate != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _address = snapshotData['address'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _zipCode = snapshotData['zip_code'] as String?;
    _country = snapshotData['country'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _email = snapshotData['email'] as String?;
    _birthDate = snapshotData['birth_date'] as DateTime?;
    _gender = snapshotData['gender'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('datos')
          : FirebaseFirestore.instance.collectionGroup('datos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('datos').doc(id);

  static Stream<DatosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DatosRecord.fromSnapshot(s));

  static Future<DatosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DatosRecord.fromSnapshot(s));

  static DatosRecord fromSnapshot(DocumentSnapshot snapshot) => DatosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DatosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DatosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DatosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DatosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDatosRecordData({
  String? firstName,
  String? lastName,
  String? address,
  String? city,
  String? state,
  String? zipCode,
  String? country,
  String? phoneNumber,
  String? email,
  DateTime? birthDate,
  String? gender,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'first_name': firstName,
      'last_name': lastName,
      'address': address,
      'city': city,
      'state': state,
      'zip_code': zipCode,
      'country': country,
      'phone_number': phoneNumber,
      'email': email,
      'birth_date': birthDate,
      'gender': gender,
    }.withoutNulls,
  );

  return firestoreData;
}

class DatosRecordDocumentEquality implements Equality<DatosRecord> {
  const DatosRecordDocumentEquality();

  @override
  bool equals(DatosRecord? e1, DatosRecord? e2) {
    return e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.address == e2?.address &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.zipCode == e2?.zipCode &&
        e1?.country == e2?.country &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.email == e2?.email &&
        e1?.birthDate == e2?.birthDate &&
        e1?.gender == e2?.gender;
  }

  @override
  int hash(DatosRecord? e) => const ListEquality().hash([
        e?.firstName,
        e?.lastName,
        e?.address,
        e?.city,
        e?.state,
        e?.zipCode,
        e?.country,
        e?.phoneNumber,
        e?.email,
        e?.birthDate,
        e?.gender
      ]);

  @override
  bool isValidKey(Object? o) => o is DatosRecord;
}
