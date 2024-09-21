import '/flutter_flow/flutter_flow_util.dart';
import 'numerostelefonicos_peluqueria_widget.dart'
    show NumerostelefonicosPeluqueriaWidget;
import 'package:flutter/material.dart';

class NumerostelefonicosPeluqueriaModel
    extends FlutterFlowModel<NumerostelefonicosPeluqueriaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
