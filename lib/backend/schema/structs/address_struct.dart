// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends FFFirebaseStruct {
  AddressStruct({
    List<AddressStruct>? direccion,
    List<int>? nombre,
    List<String>? ciudad,
    String? detalles,
    DateTime? fecha,
    String? imagen,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _direccion = direccion,
        _nombre = nombre,
        _ciudad = ciudad,
        _detalles = detalles,
        _fecha = fecha,
        _imagen = imagen,
        super(firestoreUtilData);

  // "direccion" field.
  List<AddressStruct>? _direccion;
  List<AddressStruct> get direccion => _direccion ?? const [];
  set direccion(List<AddressStruct>? val) => _direccion = val;

  void updateDireccion(Function(List<AddressStruct>) updateFn) {
    updateFn(_direccion ??= []);
  }

  bool hasDireccion() => _direccion != null;

  // "nombre" field.
  List<int>? _nombre;
  List<int> get nombre => _nombre ?? const [];
  set nombre(List<int>? val) => _nombre = val;

  void updateNombre(Function(List<int>) updateFn) {
    updateFn(_nombre ??= []);
  }

  bool hasNombre() => _nombre != null;

  // "ciudad" field.
  List<String>? _ciudad;
  List<String> get ciudad => _ciudad ?? const [];
  set ciudad(List<String>? val) => _ciudad = val;

  void updateCiudad(Function(List<String>) updateFn) {
    updateFn(_ciudad ??= []);
  }

  bool hasCiudad() => _ciudad != null;

  // "detalles" field.
  String? _detalles;
  String get detalles => _detalles ?? '';
  set detalles(String? val) => _detalles = val;

  bool hasDetalles() => _detalles != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  set fecha(DateTime? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  set imagen(String? val) => _imagen = val;

  bool hasImagen() => _imagen != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        direccion: getStructList(
          data['direccion'],
          AddressStruct.fromMap,
        ),
        nombre: getDataList(data['nombre']),
        ciudad: getDataList(data['ciudad']),
        detalles: data['detalles'] as String?,
        fecha: data['fecha'] as DateTime?,
        imagen: data['imagen'] as String?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'direccion': _direccion?.map((e) => e.toMap()).toList(),
        'nombre': _nombre,
        'ciudad': _ciudad,
        'detalles': _detalles,
        'fecha': _fecha,
        'imagen': _imagen,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'direccion': serializeParam(
          _direccion,
          ParamType.DataStruct,
          isList: true,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.int,
          isList: true,
        ),
        'ciudad': serializeParam(
          _ciudad,
          ParamType.String,
          isList: true,
        ),
        'detalles': serializeParam(
          _detalles,
          ParamType.String,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.DateTime,
        ),
        'imagen': serializeParam(
          _imagen,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        direccion: deserializeStructParam<AddressStruct>(
          data['direccion'],
          ParamType.DataStruct,
          true,
          structBuilder: AddressStruct.fromSerializableMap,
        ),
        nombre: deserializeParam<int>(
          data['nombre'],
          ParamType.int,
          true,
        ),
        ciudad: deserializeParam<String>(
          data['ciudad'],
          ParamType.String,
          true,
        ),
        detalles: deserializeParam(
          data['detalles'],
          ParamType.String,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.DateTime,
          false,
        ),
        imagen: deserializeParam(
          data['imagen'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AddressStruct &&
        listEquality.equals(direccion, other.direccion) &&
        listEquality.equals(nombre, other.nombre) &&
        listEquality.equals(ciudad, other.ciudad) &&
        detalles == other.detalles &&
        fecha == other.fecha &&
        imagen == other.imagen;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([direccion, nombre, ciudad, detalles, fecha, imagen]);
}

AddressStruct createAddressStruct({
  String? detalles,
  DateTime? fecha,
  String? imagen,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AddressStruct(
      detalles: detalles,
      fecha: fecha,
      imagen: imagen,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AddressStruct? updateAddressStruct(
  AddressStruct? address, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    address
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAddressStructData(
  Map<String, dynamic> firestoreData,
  AddressStruct? address,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (address == null) {
    return;
  }
  if (address.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && address.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final addressData = getAddressFirestoreData(address, forFieldValue);
  final nestedData = addressData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = address.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAddressFirestoreData(
  AddressStruct? address, [
  bool forFieldValue = false,
]) {
  if (address == null) {
    return {};
  }
  final firestoreData = mapToFirestore(address.toMap());

  // Add any Firestore field values
  address.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAddressListFirestoreData(
  List<AddressStruct>? addresss,
) =>
    addresss?.map((e) => getAddressFirestoreData(e, true)).toList() ?? [];
