import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InterestsRecord extends FirestoreRecord {
  InterestsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "interest" field.
  List<String>? _interest;
  List<String> get interest => _interest ?? const [];
  bool hasInterest() => _interest != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _interest = getDataList(snapshotData['interest']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('interests')
          : FirebaseFirestore.instance.collectionGroup('interests');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('interests').doc(id);

  static Stream<InterestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InterestsRecord.fromSnapshot(s));

  static Future<InterestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InterestsRecord.fromSnapshot(s));

  static InterestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InterestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InterestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InterestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InterestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InterestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInterestsRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class InterestsRecordDocumentEquality implements Equality<InterestsRecord> {
  const InterestsRecordDocumentEquality();

  @override
  bool equals(InterestsRecord? e1, InterestsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.interest, e2?.interest);
  }

  @override
  int hash(InterestsRecord? e) => const ListEquality().hash([e?.interest]);

  @override
  bool isValidKey(Object? o) => o is InterestsRecord;
}
