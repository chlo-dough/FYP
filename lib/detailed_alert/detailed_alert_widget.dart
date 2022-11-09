import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailedAlertWidget extends StatefulWidget {
  const DetailedAlertWidget({
    Key? key,
    this.logReceive,
  }) : super(key: key);

  final UsersRecord? logReceive;

  @override
  _DetailedAlertWidgetState createState() => _DetailedAlertWidgetState();
}

class _DetailedAlertWidgetState extends State<DetailedAlertWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<DummyAlertRecord>>(
      stream: queryDummyAlertRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<DummyAlertRecord> detailedAlertDummyAlertRecordList =
            snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: Color(0xFFF81909),
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30,
              ),
              onPressed: () async {
                logFirebaseEvent('IconButton_navigate_to');

                context.pushNamed('Home');
              },
            ),
            title: Text(
              'Alert',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    fontSize: 22,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2,
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StreamBuilder<List<DummyAlertRecord>>(
                      stream: queryDummyAlertRecord(
                        queryBuilder: (dummyAlertRecord) => dummyAlertRecord
                            .where('SourceIP', isEqualTo: FFAppState().test),
                        singleRecord: true,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<DummyAlertRecord> textDummyAlertRecordList =
                            snapshot.data!;
                        // Return an empty Container when the document does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final textDummyAlertRecord =
                            textDummyAlertRecordList.isNotEmpty
                                ? textDummyAlertRecordList.first
                                : null;
                        return SelectionArea(
                            child: Text(
                          'Hello World',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ));
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectionArea(
                        child: Text(
                      'Hello World',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    )),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectionArea(
                        child: Text(
                      'Hello World',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    )),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectionArea(
                        child: Text(
                      'Hello World',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    )),
                  ],
                ),
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'flag',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Block',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
