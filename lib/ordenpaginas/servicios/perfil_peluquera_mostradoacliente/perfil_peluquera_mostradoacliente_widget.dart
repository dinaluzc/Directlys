import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'perfil_peluquera_mostradoacliente_model.dart';
export 'perfil_peluquera_mostradoacliente_model.dart';

class PerfilPeluqueraMostradoaclienteWidget extends StatefulWidget {
  const PerfilPeluqueraMostradoaclienteWidget({super.key});

  @override
  State<PerfilPeluqueraMostradoaclienteWidget> createState() =>
      _PerfilPeluqueraMostradoaclienteWidgetState();
}

class _PerfilPeluqueraMostradoaclienteWidgetState
    extends State<PerfilPeluqueraMostradoaclienteWidget> {
  late PerfilPeluqueraMostradoaclienteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PerfilPeluqueraMostradoaclienteModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PerfilPeluqueraMostradoacliente'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: const Color(0xFF133A7C),
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            '0xx15hrm' /* Cuidado y Belleza */,
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                color: FlutterFlowTheme.of(context).secondary,
                letterSpacing: 0.0,
                fontStyle: FontStyle.italic,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).warning,
              size: 30.0,
            ),
            onPressed: () async {
              logFirebaseEvent('PERFIL_PELUQUERA_MOSTRADOACLIENTE_arrow_');
              logFirebaseEvent('IconButton_navigate_to');

              context.pushNamed('SolicitarservicioCopy');
            },
          ),
        ],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(140.0, 20.0, 160.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: CachedNetworkImage(
                                  fadeInDuration: const Duration(milliseconds: 0),
                                  fadeOutDuration: const Duration(milliseconds: 0),
                                  imageUrl:
                                      'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                                  width: 36.0,
                                  height: 36.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  2.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '4g02tui5' /* Andrew */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .headlineSmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmallFamily),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: RatingBar.builder(
                  onRatingUpdate: (newValue) =>
                      safeSetState(() => _model.ratingBarValue = newValue),
                  itemBuilder: (context, index) => Icon(
                    Icons.star_rounded,
                    color: FlutterFlowTheme.of(context).warning,
                  ),
                  direction: Axis.horizontal,
                  initialRating: _model.ratingBarValue ??= 3.0,
                  unratedColor: FlutterFlowTheme.of(context).primaryBackground,
                  itemCount: 5,
                  itemSize: 30.0,
                  glowColor: FlutterFlowTheme.of(context).warning,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 30.0, 20.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '0eul3fei' /* Tengo amplia experiencia  en e... */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 100.0,
                  child: CarouselSlider(
                    items: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'data:image/jpeg;base64,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',
                          width: 200.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'data:image/jpeg;base64,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',
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'data:image/jpeg;base64,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',
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                    carouselController: _model.carouselController ??=
                        CarouselController(),
                    options: CarouselOptions(
                      initialPage: 1,
                      viewportFraction: 0.5,
                      disableCenter: true,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.25,
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: false,
                      onPageChanged: (index, _) =>
                          _model.carouselCurrentIndex = index,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.instagram,
                    color: FlutterFlowTheme.of(context).error,
                    size: 24.0,
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: FFLocalizations.of(context).getText(
                              'ablgim3g' /* True Beauty (@true_beautyworld... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          const TextSpan(
                            text: '',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: FFLocalizations.of(context).getText(
                              'gnlbg846' /* True Beauty (@true_beautyworld... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          const TextSpan(
                            text: '',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'sbuozab2' /* Informacion adicional  */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'ztrblf4h' /* Ciudadania: Venezolana */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'aczefve6' /* Genero: Femenino */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'b5prgt3c' /* Discapacidad: Niguna */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(200.0, 0.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'zn50qnig' /* Cuenta con: */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(200.0, 0.0, 0.0, 0.0),
              child: FlutterFlowCheckboxGroup(
                options: [
                  FFLocalizations.of(context).getText(
                    'fq2ch7p4' /* Rut */,
                  )
                ],
                onChanged: (val) =>
                    safeSetState(() => _model.checkboxGroupValues1 = val),
                controller: _model.checkboxGroupValueController1 ??=
                    FormFieldController<List<String>>(
                  [],
                ),
                activeColor: FlutterFlowTheme.of(context).tertiary,
                checkColor: FlutterFlowTheme.of(context).secondary,
                checkboxBorderColor: FlutterFlowTheme.of(context).alternate,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      fontSize: 10.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
                unselectedTextStyle: FlutterFlowTheme.of(context)
                    .bodyMedium
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      fontSize: 8.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
                checkboxBorderRadius: BorderRadius.circular(4.0),
                initialized: _model.checkboxGroupValues1 != null,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(200.0, 0.0, 0.0, 0.0),
              child: FlutterFlowCheckboxGroup(
                options: [
                  FFLocalizations.of(context).getText(
                    'zbytwd9w' /* Factura electronica */,
                  )
                ],
                onChanged: (val) =>
                    safeSetState(() => _model.checkboxGroupValues2 = val),
                controller: _model.checkboxGroupValueController2 ??=
                    FormFieldController<List<String>>(
                  [],
                ),
                activeColor: FlutterFlowTheme.of(context).secondary,
                checkColor: FlutterFlowTheme.of(context).secondaryBackground,
                checkboxBorderColor: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      fontSize: 10.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
                checkboxBorderRadius: BorderRadius.circular(4.0),
                initialized: _model.checkboxGroupValues2 != null,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(200.0, 0.0, 0.0, 0.0),
              child: FlutterFlowCheckboxGroup(
                options: [
                  FFLocalizations.of(context).getText(
                    'jzu3mb7a' /* Permiso para trabajar en Pais */,
                  )
                ],
                onChanged: (val) =>
                    safeSetState(() => _model.checkboxGroupValues3 = val),
                controller: _model.checkboxGroupValueController3 ??=
                    FormFieldController<List<String>>(
                  [],
                ),
                activeColor: FlutterFlowTheme.of(context).secondary,
                checkColor: FlutterFlowTheme.of(context).secondaryText,
                checkboxBorderColor: FlutterFlowTheme.of(context).alternate,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      fontSize: 10.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
                checkboxBorderRadius: BorderRadius.circular(4.0),
                initialized: _model.checkboxGroupValues3 != null,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.05),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 50.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: FFLocalizations.of(context).getText(
                    'uksc955x' /* Contactar */,
                  ),
                  options: FFButtonOptions(
                    width: 270.0,
                    height: 50.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0x9B86F958),
                    textStyle: FlutterFlowTheme.of(context)
                        .titleMedium
                        .override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleMediumFamily,
                          color: Colors.white,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleMediumFamily),
                        ),
                    elevation: 2.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
