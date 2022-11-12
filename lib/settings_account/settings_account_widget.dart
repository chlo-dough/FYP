import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SettingsAccountWidget extends StatefulWidget {
  const SettingsAccountWidget({Key? key}) : super(key: key);

  @override
  _SettingsAccountWidgetState createState() => _SettingsAccountWidgetState();
}

class _SettingsAccountWidgetState extends State<SettingsAccountWidget> {
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
          'Account',
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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                  child: InkWell(
                    onLongPress: () async {
                      logFirebaseEvent('CircleImage_expand_image');
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: FlutterFlowExpandedImageView(
                            image: Image.network(
                              'https://images.unsplash.com/photo-1536164261511-3a17e671d380?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=630&q=80',
                              fit: BoxFit.contain,
                            ),
                            allowRotation: false,
                            tag: 'circleImageTag',
                            useHeroAnimation: true,
                          ),
                        ),
                      );
                    },
                    child: Hero(
                      tag: 'circleImageTag',
                      transitionOnUserGestures: true,
                      child: Container(
                        width: 100,
                        height: 100,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1536164261511-3a17e671d380?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=630&q=80',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AuthUserStreamWidget(
                          child: Text(
                            currentUserDisplayName,
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text(
                            currentUserEmail,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    logFirebaseEvent('Container_navigate_to');

                    context.pushNamed(
                      'Settings-Account-EditProfile',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Material(
                    color: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 60,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          width: 0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Edit Profile',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              buttonSize: 46,
                              icon: Icon(
                                Icons.chevron_right_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 20,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    logFirebaseEvent('Container_navigate_to');

                    context.pushNamed(
                      'Setting-Account-ChangePassword',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Material(
                    color: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 60,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          width: 0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Change Password',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              buttonSize: 46,
                              icon: Icon(
                                Icons.chevron_right_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 20,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                logFirebaseEvent('Button_auth');
                GoRouter.of(context).prepareAuthEvent();
                await signOut();
                logFirebaseEvent('Button_alert_dialog');
                var confirmDialogResponse = await showDialog<bool>(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Log out'),
                          content: Text('Log out of account?'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext, false),
                              child: Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext, true),
                              child: Text('Confirm'),
                            ),
                          ],
                        );
                      },
                    ) ??
                    false;
                if (confirmDialogResponse) {
                  logFirebaseEvent('Button_navigate_to');

                  context.goNamedAuth(
                    'login',
                    mounted,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                } else {
                  logFirebaseEvent('Button_navigate_back');
                  context.pop();
                  return;
                }

                logFirebaseEvent('Button_update_local_state');
                setState(() => FFAppState().uidref = '');
              },
              text: 'Log Out',
              options: FFButtonOptions(
                width: 110,
                height: 50,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                elevation: 3,
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  width: 1,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                logFirebaseEvent('Button_alert_dialog');
                var confirmDialogResponse = await showDialog<bool>(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Delete Account?'),
                          content: Text(
                              'Are you sure you want to delete your account?'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext, false),
                              child: Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext, true),
                              child: Text('Confirm'),
                            ),
                          ],
                        );
                      },
                    ) ??
                    false;
                if (confirmDialogResponse) {
                  logFirebaseEvent('Button_auth');
                  await deleteUser(context);
                  logFirebaseEvent('Button_navigate_to');

                  context.pushNamed(
                    'login',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                } else {
                  return;
                }
              },
              text: 'Delete Account',
              options: FFButtonOptions(
                width: 200,
                height: 50,
                color: FlutterFlowTheme.of(context).alternate,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                elevation: 3,
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  width: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
