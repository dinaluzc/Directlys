import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AwardsRecord extends FirestoreRecord {
  AwardsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "award" field.
  List<String>? _award;
  List<String> get award => _award ?? const [];
  bool hasAward() => _award != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _award = getDataList(snapshotData['award']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('awards')
          : FirebaseFirestore.instance.collectionGroup('awards');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('awards').doc(id);

  static Stream<AwardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AwardsRecord.fromSnapshot(s));

  static Future<AwardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AwardsRecord.fromSnapshot(s));

  static AwardsRecord fromSnapshot(DocumentSnapshot snapshot) => AwardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AwardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AwardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AwardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AwardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAwardsRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class AwardsRecordDocumentEquality implements Equality<AwardsRecord> {
  const AwardsRecordDocumentEquality();

  @override
  bool equals(AwardsRecord? e1, AwardsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.award, e2?.award);
  }

  @override
  int hash(AwardsRecord? e) => const ListEquality().hash([e?.award]);

  @override
  bool isValidKey(Object? o) => o is AwardsRecord;
}
