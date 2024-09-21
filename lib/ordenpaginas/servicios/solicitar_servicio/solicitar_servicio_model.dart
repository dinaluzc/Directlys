import '/flutter_flow/flutter_flow_util.dart';
import 'solicitar_servicio_widget.dart' show SolicitarServicioWidget;
import 'package:flutter/material.dart';

class SolicitarServicioModel extends FlutterFlowModel<SolicitarServicioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
