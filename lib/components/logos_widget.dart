import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'logos_model.dart';
export 'logos_model.dart';

class LogosWidget extends StatefulWidget {
  const LogosWidget({super.key});

  @override
  State<LogosWidget> createState() => _LogosWidgetState();
}

class _LogosWidgetState extends State<LogosWidget> {
  late LogosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        logFirebaseEvent('LOGOS_COMP_Image_s29il9r8_ON_TAP');
        logFirebaseEvent('Image_navigate_to');

        context.pushNamed('SolicitarServicio');
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Image.asset(
          Theme.of(context).brightness == Brightness.dark
              ? 'assets/images/Logo.jpeg'
              : 'assets/images/Logo.jpeg',
          width: 120.0,
          height: 57.0,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
