import '/flutter_flow/flutter_flow_util.dart';
import 'registrotelefonico_widget.dart' show RegistrotelefonicoWidget;
import 'package:flutter/material.dart';

class RegistrotelefonicoModel
    extends FlutterFlowModel<RegistrotelefonicoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();
  }
}
