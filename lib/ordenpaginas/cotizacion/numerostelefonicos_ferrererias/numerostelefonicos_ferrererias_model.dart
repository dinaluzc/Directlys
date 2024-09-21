import '/flutter_flow/flutter_flow_util.dart';
import 'numerostelefonicos_ferrererias_widget.dart'
    show NumerostelefonicosFerrereriasWidget;
import 'package:flutter/material.dart';

class NumerostelefonicosFerrereriasModel
    extends FlutterFlowModel<NumerostelefonicosFerrereriasWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // State field(s) for RatingBar widget.
  double? ratingBarValue3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
