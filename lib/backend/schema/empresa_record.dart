import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpresaRecord extends FirestoreRecord {
  EmpresaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _website = snapshotData['website'] as String?;
    _logo = snapshotData['logo'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('empresa')
          : FirebaseFirestore.instance.collectionGroup('empresa');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('empresa').doc(id);

  static Stream<EmpresaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmpresaRecord.fromSnapshot(s));

  static Future<EmpresaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmpresaRecord.fromSnapshot(s));

  static EmpresaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmpresaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmpresaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmpresaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmpresaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmpresaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmpresaRecordData({
  String? name,
  String? website,
  String? logo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'website': website,
      'logo': logo,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmpresaRecordDocumentEquality implements Equality<EmpresaRecord> {
  const EmpresaRecordDocumentEquality();

  @override
  bool equals(EmpresaRecord? e1, EmpresaRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.website == e2?.website &&
        e1?.logo == e2?.logo;
  }

  @override
  int hash(EmpresaRecord? e) =>
      const ListEquality().hash([e?.name, e?.website, e?.logo]);

  @override
  bool isValidKey(Object? o) => o is EmpresaRecord;
}
