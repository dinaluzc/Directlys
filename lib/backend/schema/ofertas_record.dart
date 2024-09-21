import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OfertasRecord extends FirestoreRecord {
  OfertasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre_empresa" field.
  String? _nombreEmpresa;
  String get nombreEmpresa => _nombreEmpresa ?? '';
  bool hasNombreEmpresa() => _nombreEmpresa != null;

  // "descripcion_puesto" field.
  String? _descripcionPuesto;
  String get descripcionPuesto => _descripcionPuesto ?? '';
  bool hasDescripcionPuesto() => _descripcionPuesto != null;

  // "salario" field.
  double? _salario;
  double get salario => _salario ?? 0.0;
  bool hasSalario() => _salario != null;

  // "requisitos" field.
  String? _requisitos;
  String get requisitos => _requisitos ?? '';
  bool hasRequisitos() => _requisitos != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombreEmpresa = snapshotData['nombre_empresa'] as String?;
    _descripcionPuesto = snapshotData['descripcion_puesto'] as String?;
    _salario = castToType<double>(snapshotData['salario']);
    _requisitos = snapshotData['requisitos'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('ofertas')
          : FirebaseFirestore.instance.collectionGroup('ofertas');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('ofertas').doc(id);

  static Stream<OfertasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OfertasRecord.fromSnapshot(s));

  static Future<OfertasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OfertasRecord.fromSnapshot(s));

  static OfertasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OfertasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OfertasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OfertasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OfertasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OfertasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOfertasRecordData({
  String? nombreEmpresa,
  String? descripcionPuesto,
  double? salario,
  String? requisitos,
  String? imagen,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre_empresa': nombreEmpresa,
      'descripcion_puesto': descripcionPuesto,
      'salario': salario,
      'requisitos': requisitos,
      'imagen': imagen,
      'created_at': createdAt,
      'updated_at': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class OfertasRecordDocumentEquality implements Equality<OfertasRecord> {
  const OfertasRecordDocumentEquality();

  @override
  bool equals(OfertasRecord? e1, OfertasRecord? e2) {
    return e1?.nombreEmpresa == e2?.nombreEmpresa &&
        e1?.descripcionPuesto == e2?.descripcionPuesto &&
        e1?.salario == e2?.salario &&
        e1?.requisitos == e2?.requisitos &&
        e1?.imagen == e2?.imagen &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(OfertasRecord? e) => const ListEquality().hash([
        e?.nombreEmpresa,
        e?.descripcionPuesto,
        e?.salario,
        e?.requisitos,
        e?.imagen,
        e?.createdAt,
        e?.updatedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is OfertasRecord;
}
