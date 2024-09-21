import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_prestador2_widget.dart' show PerfilPrestador2Widget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PerfilPrestador2Model extends FlutterFlowModel<PerfilPrestador2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
