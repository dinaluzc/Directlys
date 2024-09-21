import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NegocioRecord extends FirestoreRecord {
  NegocioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "ciudad" field.
  String? _ciudad;
  String get ciudad => _ciudad ?? '';
  bool hasCiudad() => _ciudad != null;

  // "valoracion" field.
  double? _valoracion;
  double get valoracion => _valoracion ?? 0.0;
  bool hasValoracion() => _valoracion != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "horario" field.
  String? _horario;
  String get horario => _horario ?? '';
  bool hasHorario() => _horario != null;

  // "lat" field.
  LatLng? _lat;
  LatLng? get lat => _lat;
  bool hasLat() => _lat != null;

  // "lng" field.
  LatLng? _lng;
  LatLng? get lng => _lng;
  bool hasLng() => _lng != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _ciudad = snapshotData['ciudad'] as String?;
    _valoracion = castToType<double>(snapshotData['valoracion']);
    _imagen = snapshotData['imagen'] as String?;
    _url = snapshotData['url'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _horario = snapshotData['horario'] as String?;
    _lat = snapshotData['lat'] as LatLng?;
    _lng = snapshotData['lng'] as LatLng?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('negocio');

  static Stream<NegocioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NegocioRecord.fromSnapshot(s));

  static Future<NegocioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NegocioRecord.fromSnapshot(s));

  static NegocioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NegocioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NegocioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NegocioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NegocioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NegocioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNegocioRecordData({
  String? id,
  String? nombre,
  String? descripcion,
  String? direccion,
  String? ciudad,
  double? valoracion,
  String? imagen,
  String? url,
  String? telefono,
  String? horario,
  LatLng? lat,
  LatLng? lng,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'nombre': nombre,
      'descripcion': descripcion,
      'direccion': direccion,
      'ciudad': ciudad,
      'valoracion': valoracion,
      'imagen': imagen,
      'url': url,
      'telefono': telefono,
      'horario': horario,
      'lat': lat,
      'lng': lng,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class NegocioRecordDocumentEquality implements Equality<NegocioRecord> {
  const NegocioRecordDocumentEquality();

  @override
  bool equals(NegocioRecord? e1, NegocioRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.direccion == e2?.direccion &&
        e1?.ciudad == e2?.ciudad &&
        e1?.valoracion == e2?.valoracion &&
        e1?.imagen == e2?.imagen &&
        e1?.url == e2?.url &&
        e1?.telefono == e2?.telefono &&
        e1?.horario == e2?.horario &&
        e1?.lat == e2?.lat &&
        e1?.lng == e2?.lng &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(NegocioRecord? e) => const ListEquality().hash([
        e?.id,
        e?.nombre,
        e?.descripcion,
        e?.direccion,
        e?.ciudad,
        e?.valoracion,
        e?.imagen,
        e?.url,
        e?.telefono,
        e?.horario,
        e?.lat,
        e?.lng,
        e?.createdAt,
        e?.updatedAt,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is NegocioRecord;
}
