import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingNotificationsReworkedWidget extends StatefulWidget {
  const SettingNotificationsReworkedWidget({Key? key}) : super(key: key);

  @override
  _SettingNotificationsReworkedWidgetState createState() =>
      _SettingNotificationsReworkedWidgetState();
}

class _SettingNotificationsReworkedWidgetState
    extends State<SettingNotificationsReworkedWidget> {
  bool? switchListTileValue1;
  bool? switchListTileValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).maximumBlueGreen,
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

            context.pushNamed('Settings');
          },
        ),
        title: Text(
          'Notifications',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: SwitchListTile(
                value: switchListTileValue1 ??= true,
                onChanged: (newValue) async {
                  setState(() => switchListTileValue1 = newValue!);
                },
                title: Text(
                  'Push Notifications',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Receive push notifications from our application.',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                activeTrackColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
              ),
            ),
            SwitchListTile(
              value: switchListTileValue2 ??= true,
              onChanged: (newValue) async {
                setState(() => switchListTileValue2 = newValue!);
              },
              title: Text(
                'Email Notifications',
                style: FlutterFlowTheme.of(context).title3,
              ),
              subtitle: Text(
                'Receive email notifications from our application.',
                style: FlutterFlowTheme.of(context).subtitle2,
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              activeTrackColor:
                  FlutterFlowTheme.of(context).secondaryBackground,
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button-Login pressed ...');
                },
                text: 'Save Changes',
                options: FFButtonOptions(
                  width: 190,
                  height: 50,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
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
