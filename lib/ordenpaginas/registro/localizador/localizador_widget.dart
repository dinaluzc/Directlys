import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_static_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:mapbox_search/mapbox_search.dart' as mapbox;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'localizador_model.dart';
export 'localizador_model.dart';

class LocalizadorWidget extends StatefulWidget {
  const LocalizadorWidget({super.key});

  @override
  State<LocalizadorWidget> createState() => _LocalizadorWidgetState();
}

class _LocalizadorWidgetState extends State<LocalizadorWidget> {
  late LocalizadorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocalizadorModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Localizador'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFF133A7C),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              logFirebaseEvent('LOCALIZADOR_arrow_back_rounded_ICN_ON_TA');
              logFirebaseEvent('IconButton_navigate_to');

              context.pushNamed('HomePage');
            },
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('LOCALIZADOR_PAGE_Column_carrtlth_ON_TAP');
              logFirebaseEvent('Column_navigate_to');

              context.pushNamed('SeleccionaRol');
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'b5ovxxiy' /* Habilite el acceso a su ubicac... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            color: const Color(0xFF133A7C),
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleLargeFamily),
                          ),
                    ),
                  ),
                ),
                const FlutterFlowStaticMap(
                  location: LatLng(10.39972, -75.51444),
                  apiKey:
                      'pk.eyJ1Ijoiam9obnZsbCIsImEiOiJjbHhpaW04ZjIxcjVqMmpvdjBtYmxrMzE1In0.jNSlBAu-k4cBPuvIx3wviw',
                  style: mapbox.MapBoxStyle.Streets,
                  width: 300.0,
                  height: 300.0,
                  fit: BoxFit.cover,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                  zoom: 12,
                  tilt: 0,
                  rotation: 0,
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 800.0),
                    child: FlutterFlowPlacePicker(
                      iOSGoogleMapsApiKey: '',
                      androidGoogleMapsApiKey: '',
                      webGoogleMapsApiKey: '',
                      onSelect: (place) async {
                        safeSetState(() => _model.placePickerValue = place);
                      },
                      defaultText: FFLocalizations.of(context).getText(
                        'ygxuux9g' /* Seleccionar ubicación */,
                      ),
                      icon: Icon(
                        Icons.place,
                        color: FlutterFlowTheme.of(context).info,
                        size: 16.0,
                      ),
                      buttonOptions: FFButtonOptions(
                        width: 200.0,
                        height: 40.0,
                        color: const Color(0xFF133A7C),
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: FlutterFlowTheme.of(context).info,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleSmallFamily),
                            ),
                        elevation: 2.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
