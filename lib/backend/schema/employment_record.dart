import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmploymentRecord extends FirestoreRecord {
  EmploymentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "job_title" field.
  String? _jobTitle;
  String get jobTitle => _jobTitle ?? '';
  bool hasJobTitle() => _jobTitle != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "is_current" field.
  bool? _isCurrent;
  bool get isCurrent => _isCurrent ?? false;
  bool hasIsCurrent() => _isCurrent != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _companyName = snapshotData['company_name'] as String?;
    _jobTitle = snapshotData['job_title'] as String?;
    _startDate = snapshotData['start_date'] as DateTime?;
    _endDate = snapshotData['end_date'] as DateTime?;
    _isCurrent = snapshotData['is_current'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('employment')
          : FirebaseFirestore.instance.collectionGroup('employment');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('employment').doc(id);

  static Stream<EmploymentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmploymentRecord.fromSnapshot(s));

  static Future<EmploymentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmploymentRecord.fromSnapshot(s));

  static EmploymentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmploymentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmploymentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmploymentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmploymentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmploymentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmploymentRecordData({
  String? companyName,
  String? jobTitle,
  DateTime? startDate,
  DateTime? endDate,
  bool? isCurrent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'company_name': companyName,
      'job_title': jobTitle,
      'start_date': startDate,
      'end_date': endDate,
      'is_current': isCurrent,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmploymentRecordDocumentEquality implements Equality<EmploymentRecord> {
  const EmploymentRecordDocumentEquality();

  @override
  bool equals(EmploymentRecord? e1, EmploymentRecord? e2) {
    return e1?.companyName == e2?.companyName &&
        e1?.jobTitle == e2?.jobTitle &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.isCurrent == e2?.isCurrent;
  }

  @override
  int hash(EmploymentRecord? e) => const ListEquality().hash(
      [e?.companyName, e?.jobTitle, e?.startDate, e?.endDate, e?.isCurrent]);

  @override
  bool isValidKey(Object? o) => o is EmploymentRecord;
}
