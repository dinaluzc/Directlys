import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'numerostelefonicos_peluqueria_model.dart';
export 'numerostelefonicos_peluqueria_model.dart';

class NumerostelefonicosPeluqueriaWidget extends StatefulWidget {
  const NumerostelefonicosPeluqueriaWidget({super.key});

  @override
  State<NumerostelefonicosPeluqueriaWidget> createState() =>
      _NumerostelefonicosPeluqueriaWidgetState();
}

class _NumerostelefonicosPeluqueriaWidgetState
    extends State<NumerostelefonicosPeluqueriaWidget> {
  late NumerostelefonicosPeluqueriaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NumerostelefonicosPeluqueriaModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'NumerostelefonicosPeluqueria'});
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondary,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('NUMEROSTELEFONICOS_PELUQUERIA_Icon_7tmyh');
                  logFirebaseEvent('Icon_navigate_to');

                  context.pushNamed('Directoriotelefonico');
                },
                child: Icon(
                  Icons.undo,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 0.0, 6.0),
                child: Container(
                  width: 44.0,
                  height: 44.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).info,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF133A7C),
                      width: 2.0,
                    ),
                  ),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'NUMEROSTELEFONICOS_PELUQUERIA_Stack_o98u');
                      logFirebaseEvent('Stack_navigate_to');

                      context.pushNamed('AsesorasEspecializadas');
                    },
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Image.network(
                              '',
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.04, -1.27),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'cy5h8jet' /* p */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: const Color(0xFF15161E),
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Outfit'),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('NUMEROSTELEFONICOS_PELUQUERIA_Icon_mt4or');
                  logFirebaseEvent('Icon_navigate_to');

                  context.pushNamed('AsesorasEspecializadas');
                },
                child: FaIcon(
                  FontAwesomeIcons.arrowAltCircleLeft,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 8.0),
                child: TextFormField(
                  controller: _model.textController,
                  focusNode: _model.textFieldFocusNode,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      '4af1827d' /* Search all articles... */,
                    ),
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: const Color(0xFF606A85),
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: GoogleFonts.asMap()
                                  .containsKey('Plus Jakarta Sans'),
                            ),
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: const Color(0xFF606A85),
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: GoogleFonts.asMap()
                                  .containsKey('Plus Jakarta Sans'),
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E7EB),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF6F61EF),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFFF5963),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFFF5963),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    suffixIcon: const Icon(
                      Icons.search_rounded,
                      color: Color(0xFF606A85),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: const Color(0xFF15161E),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: GoogleFonts.asMap()
                            .containsKey('Plus Jakarta Sans'),
                      ),
                  cursorColor: const Color(0xFF6F61EF),
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('NUMEROSTELEFONICOS_PELUQUERIA_SOLCITAR_C');
                  logFirebaseEvent('Button_navigate_to');

                  context.pushNamed('SolicitarCotizacion');
                },
                text: FFLocalizations.of(context).getText(
                  '38abob97' /* Solcitar cotización */,
                ),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleSmallFamily,
                        color: Colors.white,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              const Divider(
                thickness: 1.0,
                color: Color(0xFFE5E7EB),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'nx5ldek4' /* Peluquerias - peluquero-peinad... */,
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w900,
                        useGoogleFonts: GoogleFonts.asMap()
                            .containsKey('Plus Jakarta Sans'),
                      ),
                ),
              ),
              ListView(
                padding: const EdgeInsets.fromLTRB(
                  0,
                  8.0,
                  0,
                  44.0,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    width: 100.0,
                    decoration: const BoxDecoration(),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'NUMEROSTELEFONICOS_PELUQUERIA_Stack_qppq');
                        logFirebaseEvent('Stack_navigate_to');

                        context.pushNamed('ArreglosLocativos');
                      },
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0x4D9489F5),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0),
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                    ),
                                    border: Border.all(
                                      color: const Color(0xFF133A7C),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        'data:image/jpeg;base64,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',
                                        width: 120.0,
                                        height: 120.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'fd9irymq' /* Peluqueria la Mejor */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: const Color(0xFF15161E),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            'Plus Jakarta Sans'),
                                                  ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: Icon(
                                                Icons.grade,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 24.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 8.0, 12.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'kv2ikv9j' /* Barrio la consolata.. */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: const Color(0xFF133A7C),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              'Plus Jakarta Sans'),
                                                    ),
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.mapMarkerAlt,
                                                color: Color(0x4DF1CA10),
                                                size: 20.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Icon(
                                                  Icons
                                                      .chat_bubble_outline_rounded,
                                                  color: Color(0xFF606A85),
                                                  size: 16.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'bv0y9vd2' /* 24 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            const Color(0xFF606A85),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                'Plus Jakarta Sans'),
                                                      ),
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.whatsapp,
                                                  color: Color(0xFF3DB340),
                                                  size: 24.0,
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.phone,
                                                  color: Color(0xFF133A7C),
                                                  size: 25.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 4.0)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                              child: Checkbox(
                                value: _model.checkboxValue1 ??= false,
                                onChanged: (newValue) async {
                                  safeSetState(
                                      () => _model.checkboxValue1 = newValue!);
                                },
                                side: BorderSide(
                                  width: 2,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor: FlutterFlowTheme.of(context).info,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 100.0,
                    decoration: const BoxDecoration(),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 16.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x4D9489F5),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                  border: Border.all(
                                    color: const Color(0xFF133A7C),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'NUMEROSTELEFONICOS_PELUQUERIA_Image_82co');
                                      logFirebaseEvent('Image_expand_image');
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          child: FlutterFlowExpandedImageView(
                                            image: Image.network(
                                              'data:image/jpeg;base64,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',
                                              fit: BoxFit.contain,
                                            ),
                                            allowRotation: false,
                                            tag: 'imageTag3',
                                            useHeroAnimation: true,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Hero(
                                      tag: 'imageTag3',
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                        child: Image.network(
                                          'data:image/jpeg;base64,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',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '64ob33hr' /* Peluqueria Canina */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: const Color(0xFF15161E),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          'Plus Jakarta Sans'),
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Icon(
                                              Icons.grade,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .warning,
                                              size: 24.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 12.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'srwi1evn' /* Centro comercial san Fernando */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelSmall
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: const Color(0xFF133A7C),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            'Plus Jakarta Sans'),
                                                  ),
                                            ),
                                          ),
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.mapMarkerAlt,
                                              color: Color(0x4DF1CA10),
                                              size: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 4.0, 0.0),
                                              child: Icon(
                                                Icons
                                                    .chat_bubble_outline_rounded,
                                                color: Color(0xFF606A85),
                                                size: 16.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'g8aa0bp7' /* 24 */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: const Color(0xFF606A85),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              'Plus Jakarta Sans'),
                                                    ),
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.whatsapp,
                                                color: Color(0xFF3DB340),
                                                size: 20.0,
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 4.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.phone,
                                                color: Color(0xFF133A7C),
                                                size: 25.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            unselectedWidgetColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                          child: Checkbox(
                            value: _model.checkboxValue2 ??= false,
                            onChanged: (newValue) async {
                              safeSetState(
                                  () => _model.checkboxValue2 = newValue!);
                            },
                            side: BorderSide(
                              width: 2,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                            activeColor: FlutterFlowTheme.of(context).primary,
                            checkColor: FlutterFlowTheme.of(context).info,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100.0,
                    decoration: const BoxDecoration(),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 16.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x4D9489F5),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                  border: Border.all(
                                    color: const Color(0xFF133A7C),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_8AFdi_Z1Yk7vI5DNnplXkN34dX8MpaiKOg&usqp=CAU',
                                      width: 120.0,
                                      height: 120.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'tv1ak1gc' /* Barberia los Angeles */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: const Color(0xFF15161E),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          'Plus Jakarta Sans'),
                                                ),
                                          ),
                                          const Icon(
                                            Icons.grade,
                                            color: Color(0xFFE3E4E5),
                                            size: 24.0,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 12.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '211o19se' /* Bocagrande Avenida */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelSmall
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: const Color(0xFF133A7C),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            'Plus Jakarta Sans'),
                                                  ),
                                            ),
                                          ),
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.mapMarkerAlt,
                                              color: Color(0x4DF1CA10),
                                              size: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 4.0, 0.0),
                                              child: Icon(
                                                Icons
                                                    .chat_bubble_outline_rounded,
                                                color: Color(0xFF606A85),
                                                size: 16.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'j95kbboo' /* 24 */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: const Color(0xFF606A85),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              'Plus Jakarta Sans'),
                                                    ),
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.whatsapp,
                                                color: Color(0xFF3DB340),
                                                size: 20.0,
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 4.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.phone,
                                                color: Color(0xFF133A7C),
                                                size: 25.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            unselectedWidgetColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                          child: Checkbox(
                            value: _model.checkboxValue3 ??= false,
                            onChanged: (newValue) async {
                              safeSetState(
                                  () => _model.checkboxValue3 = newValue!);
                            },
                            side: BorderSide(
                              width: 2,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                            activeColor: FlutterFlowTheme.of(context).primary,
                            checkColor: FlutterFlowTheme.of(context).info,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100.0,
                    decoration: const BoxDecoration(),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 16.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x4D9489F5),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                  border: Border.all(
                                    color: const Color(0xFF133A7C),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROMu7oA8y23w4TsvYpxcE1UcczrX4FBFSJaA&usqp=CAU',
                                      width: 120.0,
                                      height: 120.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'ra3mdqvt' /* Brenda  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: const Color(0xFF15161E),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          'Plus Jakarta Sans'),
                                                ),
                                          ),
                                          Icon(
                                            Icons.grade,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 12.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ki4ak2su' /* Ceballos Calle principal */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelSmall
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: const Color(0xFF133A7C),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            'Plus Jakarta Sans'),
                                                  ),
                                            ),
                                          ),
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.mapMarkerAlt,
                                              color: Color(0x4DF1CA10),
                                              size: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 4.0, 0.0),
                                              child: Icon(
                                                Icons
                                                    .chat_bubble_outline_rounded,
                                                color: Color(0xFF606A85),
                                                size: 16.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'azfn33px' /* 24 */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: const Color(0xFF606A85),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              'Plus Jakarta Sans'),
                                                    ),
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.whatsapp,
                                                color: Color(0xFF3DB340),
                                                size: 20.0,
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 4.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.phone,
                                                color: Color(0xFF133A7C),
                                                size: 25.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            unselectedWidgetColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                          child: Checkbox(
                            value: _model.checkboxValue4 ??= false,
                            onChanged: (newValue) async {
                              safeSetState(
                                  () => _model.checkboxValue4 = newValue!);
                            },
                            side: BorderSide(
                              width: 2,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                            activeColor: FlutterFlowTheme.of(context).primary,
                            checkColor: FlutterFlowTheme.of(context).info,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
