import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HobbiesRecord extends FirestoreRecord {
  HobbiesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "hobby" field.
  List<String>? _hobby;
  List<String> get hobby => _hobby ?? const [];
  bool hasHobby() => _hobby != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _hobby = getDataList(snapshotData['hobby']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('hobbies')
          : FirebaseFirestore.instance.collectionGroup('hobbies');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('hobbies').doc(id);

  static Stream<HobbiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HobbiesRecord.fromSnapshot(s));

  static Future<HobbiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HobbiesRecord.fromSnapshot(s));

  static HobbiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HobbiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HobbiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HobbiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HobbiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HobbiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHobbiesRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class HobbiesRecordDocumentEquality implements Equality<HobbiesRecord> {
  const HobbiesRecordDocumentEquality();

  @override
  bool equals(HobbiesRecord? e1, HobbiesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.hobby, e2?.hobby);
  }

  @override
  int hash(HobbiesRecord? e) => const ListEquality().hash([e?.hobby]);

  @override
  bool isValidKey(Object? o) => o is HobbiesRecord;
}
