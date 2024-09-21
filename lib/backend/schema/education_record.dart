import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EducationRecord extends FirestoreRecord {
  EducationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "school_name" field.
  String? _schoolName;
  String get schoolName => _schoolName ?? '';
  bool hasSchoolName() => _schoolName != null;

  // "degree" field.
  String? _degree;
  String get degree => _degree ?? '';
  bool hasDegree() => _degree != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "gpa" field.
  double? _gpa;
  double get gpa => _gpa ?? 0.0;
  bool hasGpa() => _gpa != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _schoolName = snapshotData['school_name'] as String?;
    _degree = snapshotData['degree'] as String?;
    _startDate = snapshotData['start_date'] as DateTime?;
    _endDate = snapshotData['end_date'] as DateTime?;
    _gpa = castToType<double>(snapshotData['gpa']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('education')
          : FirebaseFirestore.instance.collectionGroup('education');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('education').doc(id);

  static Stream<EducationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EducationRecord.fromSnapshot(s));

  static Future<EducationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EducationRecord.fromSnapshot(s));

  static EducationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EducationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EducationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EducationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EducationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EducationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEducationRecordData({
  String? schoolName,
  String? degree,
  DateTime? startDate,
  DateTime? endDate,
  double? gpa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'school_name': schoolName,
      'degree': degree,
      'start_date': startDate,
      'end_date': endDate,
      'gpa': gpa,
    }.withoutNulls,
  );

  return firestoreData;
}

class EducationRecordDocumentEquality implements Equality<EducationRecord> {
  const EducationRecordDocumentEquality();

  @override
  bool equals(EducationRecord? e1, EducationRecord? e2) {
    return e1?.schoolName == e2?.schoolName &&
        e1?.degree == e2?.degree &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.gpa == e2?.gpa;
  }

  @override
  int hash(EducationRecord? e) => const ListEquality()
      .hash([e?.schoolName, e?.degree, e?.startDate, e?.endDate, e?.gpa]);

  @override
  bool isValidKey(Object? o) => o is EducationRecord;
}
