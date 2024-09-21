import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CandidatosRecord extends FirestoreRecord {
  CandidatosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "applied_at" field.
  DateTime? _appliedAt;
  DateTime? get appliedAt => _appliedAt;
  bool hasAppliedAt() => _appliedAt != null;

  // "resume" field.
  String? _resume;
  String get resume => _resume ?? '';
  bool hasResume() => _resume != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
    _appliedAt = snapshotData['applied_at'] as DateTime?;
    _resume = snapshotData['resume'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('candidatos')
          : FirebaseFirestore.instance.collectionGroup('candidatos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('candidatos').doc(id);

  static Stream<CandidatosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CandidatosRecord.fromSnapshot(s));

  static Future<CandidatosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CandidatosRecord.fromSnapshot(s));

  static CandidatosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CandidatosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CandidatosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CandidatosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CandidatosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CandidatosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCandidatosRecordData({
  String? name,
  String? email,
  DateTime? appliedAt,
  String? resume,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'email': email,
      'applied_at': appliedAt,
      'resume': resume,
    }.withoutNulls,
  );

  return firestoreData;
}

class CandidatosRecordDocumentEquality implements Equality<CandidatosRecord> {
  const CandidatosRecordDocumentEquality();

  @override
  bool equals(CandidatosRecord? e1, CandidatosRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.appliedAt == e2?.appliedAt &&
        e1?.resume == e2?.resume;
  }

  @override
  int hash(CandidatosRecord? e) =>
      const ListEquality().hash([e?.name, e?.email, e?.appliedAt, e?.resume]);

  @override
  bool isValidKey(Object? o) => o is CandidatosRecord;
}
