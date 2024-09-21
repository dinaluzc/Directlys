import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostulacionesRecord extends FirestoreRecord {
  PostulacionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  bool hasApellidos() => _apellidos != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "titulo_profesional" field.
  String? _tituloProfesional;
  String get tituloProfesional => _tituloProfesional ?? '';
  bool hasTituloProfesional() => _tituloProfesional != null;

  // "experiencia" field.
  String? _experiencia;
  String get experiencia => _experiencia ?? '';
  bool hasExperiencia() => _experiencia != null;

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
    _nombre = snapshotData['nombre'] as String?;
    _apellidos = snapshotData['apellidos'] as String?;
    _email = snapshotData['email'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _tituloProfesional = snapshotData['titulo_profesional'] as String?;
    _experiencia = snapshotData['experiencia'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('postulaciones')
          : FirebaseFirestore.instance.collectionGroup('postulaciones');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('postulaciones').doc(id);

  static Stream<PostulacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostulacionesRecord.fromSnapshot(s));

  static Future<PostulacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostulacionesRecord.fromSnapshot(s));

  static PostulacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PostulacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostulacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostulacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostulacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostulacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostulacionesRecordData({
  String? nombre,
  String? apellidos,
  String? email,
  String? telefono,
  String? tituloProfesional,
  String? experiencia,
  String? imagen,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'apellidos': apellidos,
      'email': email,
      'telefono': telefono,
      'titulo_profesional': tituloProfesional,
      'experiencia': experiencia,
      'imagen': imagen,
      'created_at': createdAt,
      'updated_at': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostulacionesRecordDocumentEquality
    implements Equality<PostulacionesRecord> {
  const PostulacionesRecordDocumentEquality();

  @override
  bool equals(PostulacionesRecord? e1, PostulacionesRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.apellidos == e2?.apellidos &&
        e1?.email == e2?.email &&
        e1?.telefono == e2?.telefono &&
        e1?.tituloProfesional == e2?.tituloProfesional &&
        e1?.experiencia == e2?.experiencia &&
        e1?.imagen == e2?.imagen &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(PostulacionesRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.apellidos,
        e?.email,
        e?.telefono,
        e?.tituloProfesional,
        e?.experiencia,
        e?.imagen,
        e?.createdAt,
        e?.updatedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is PostulacionesRecord;
}
