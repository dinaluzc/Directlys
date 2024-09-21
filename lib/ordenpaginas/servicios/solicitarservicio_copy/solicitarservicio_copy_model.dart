import '/components/logos_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'solicitarservicio_copy_widget.dart' show SolicitarservicioCopyWidget;
import 'package:flutter/material.dart';

class SolicitarservicioCopyModel
    extends FlutterFlowModel<SolicitarservicioCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for logos component.
  late LogosModel logosModel;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // State field(s) for RatingBar widget.
  double? ratingBarValue3;
  // State field(s) for RatingBar widget.
  double? ratingBarValue4;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;

  @override
  void initState(BuildContext context) {
    logosModel = createModel(context, () => LogosModel());
  }

  @override
  void dispose() {
    logosModel.dispose();
  }
}
