import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LanguagesRecord extends FirestoreRecord {
  LanguagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "language" field.
  List<String>? _language;
  List<String> get language => _language ?? const [];
  bool hasLanguage() => _language != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _language = getDataList(snapshotData['language']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('languages')
          : FirebaseFirestore.instance.collectionGroup('languages');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('languages').doc(id);

  static Stream<LanguagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LanguagesRecord.fromSnapshot(s));

  static Future<LanguagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LanguagesRecord.fromSnapshot(s));

  static LanguagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LanguagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LanguagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LanguagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LanguagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LanguagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLanguagesRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class LanguagesRecordDocumentEquality implements Equality<LanguagesRecord> {
  const LanguagesRecordDocumentEquality();

  @override
  bool equals(LanguagesRecord? e1, LanguagesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.language, e2?.language);
  }

  @override
  int hash(LanguagesRecord? e) => const ListEquality().hash([e?.language]);

  @override
  bool isValidKey(Object? o) => o is LanguagesRecord;
}
