import '/flutter_flow/flutter_flow_util.dart';
import 'pgina_inicial_widget.dart' show PginaInicialWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PginaInicialModel extends FlutterFlowModel<PginaInicialWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
