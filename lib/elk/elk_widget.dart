import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElkWidget extends StatefulWidget {
  const ElkWidget({Key? key}) : super(key: key);

  @override
  _ElkWidgetState createState() => _ElkWidgetState();
}

class _ElkWidgetState extends State<ElkWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FlutterFlowWebView(
              url: FFAppState().test,
              bypass: false,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.95,
              verticalScroll: true,
              horizontalScroll: true,
            ),
          ],
        ),
      ),
    );
  }
}
