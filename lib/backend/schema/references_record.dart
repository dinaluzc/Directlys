import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReferencesRecord extends FirestoreRecord {
  ReferencesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "relationship" field.
  String? _relationship;
  String get relationship => _relationship ?? '';
  bool hasRelationship() => _relationship != null;

  // "reference_email" field.
  String? _referenceEmail;
  String get referenceEmail => _referenceEmail ?? '';
  bool hasReferenceEmail() => _referenceEmail != null;

  // "contact_number" field.
  String? _contactNumber;
  String get contactNumber => _contactNumber ?? '';
  bool hasContactNumber() => _contactNumber != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _relationship = snapshotData['relationship'] as String?;
    _referenceEmail = snapshotData['reference_email'] as String?;
    _contactNumber = snapshotData['contact_number'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('references')
          : FirebaseFirestore.instance.collectionGroup('references');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('references').doc(id);

  static Stream<ReferencesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReferencesRecord.fromSnapshot(s));

  static Future<ReferencesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReferencesRecord.fromSnapshot(s));

  static ReferencesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReferencesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReferencesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReferencesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReferencesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReferencesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReferencesRecordData({
  String? name,
  String? relationship,
  String? referenceEmail,
  String? contactNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'relationship': relationship,
      'reference_email': referenceEmail,
      'contact_number': contactNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReferencesRecordDocumentEquality implements Equality<ReferencesRecord> {
  const ReferencesRecordDocumentEquality();

  @override
  bool equals(ReferencesRecord? e1, ReferencesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.relationship == e2?.relationship &&
        e1?.referenceEmail == e2?.referenceEmail &&
        e1?.contactNumber == e2?.contactNumber;
  }

  @override
  int hash(ReferencesRecord? e) => const ListEquality()
      .hash([e?.name, e?.relationship, e?.referenceEmail, e?.contactNumber]);

  @override
  bool isValidKey(Object? o) => o is ReferencesRecord;
}
