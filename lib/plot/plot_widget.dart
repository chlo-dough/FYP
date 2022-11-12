import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_charts.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlotWidget extends StatefulWidget {
  const PlotWidget({Key? key}) : super(key: key);

  @override
  _PlotWidgetState createState() => _PlotWidgetState();
}

class _PlotWidgetState extends State<PlotWidget> {
  String? dropDownValue1;
  String? dropDownValue2;
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

            context.pushNamed('HomePage');
          },
        ),
        title: Text(
          'Plot',
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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: FlutterFlowTheme.of(context).primaryText,
                      unselectedLabelColor: Color(0xFF57636C),
                      labelStyle:
                          FlutterFlowTheme.of(context).subtitle1.override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF1D2429),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                      indicatorColor:
                          FlutterFlowTheme.of(context).secondaryColor,
                      tabs: [
                        Tab(
                          text: 'Plot',
                        ),
                        Tab(
                          text: 'Settings',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                child: Container(
                                  width: 300,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: StreamBuilder<List<LogDataRecord>>(
                                    stream: queryLogDataRecord(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<LogDataRecord>
                                          chartLogDataRecordList =
                                          snapshot.data!;
                                      return Container(
                                        width: 300,
                                        height: 200,
                                        child: Stack(
                                          children: [
                                            FlutterFlowLineChart(
                                              data: [
                                                FFLineChartData(
                                                  xData: List.generate(
                                                      random_data.randomInteger(
                                                          0, 0),
                                                      (index) => random_data
                                                          .randomDouble(0, 1)),
                                                  yData: List.generate(
                                                      random_data.randomInteger(
                                                          0, 0),
                                                      (index) => random_data
                                                          .randomDouble(0, 1)),
                                                  settings: LineChartBarData(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    barWidth: 3,
                                                    belowBarData: BarAreaData(
                                                      show: true,
                                                      color: Color(0xFFDEDEEA),
                                                    ),
                                                  ),
                                                )
                                              ],
                                              chartStylingInfo:
                                                  ChartStylingInfo(
                                                enableTooltip: true,
                                                tooltipBackgroundColor:
                                                    Colors.red,
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                showBorder: false,
                                              ),
                                              axisBounds: AxisBounds(),
                                              xAxisLabelInfo: AxisLabelInfo(
                                                title: 'Time',
                                                titleTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 9,
                                                        ),
                                                showLabels: true,
                                                labelTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 9,
                                                        ),
                                                labelInterval: 10,
                                              ),
                                              yAxisLabelInfo: AxisLabelInfo(),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(1, 1),
                                              child:
                                                  FlutterFlowChartLegendWidget(
                                                entries: [
                                                  LegendEntry(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryColor,
                                                      'Traffic'),
                                                ],
                                                width: 100,
                                                height: 30,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                                textPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(5, 0, 0, 0),
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 5, 0),
                                                borderColor: Colors.black,
                                                indicatorSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 4),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4, 0, 0, 0),
                                              child: Text(
                                                'Time',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 4, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: FlutterFlowDropDown(
                                                  options: [
                                                    'Yesterday',
                                                    'Last Week',
                                                    'Last Month',
                                                    'Last Year'
                                                  ],
                                                  onChanged: (val) => setState(
                                                      () =>
                                                          dropDownValue1 = val),
                                                  width: 180,
                                                  height: 50,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                      ),
                                                  hintText: 'Please select...',
                                                  fillColor: Colors.white,
                                                  elevation: 2,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0,
                                                  borderRadius: 0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(12, 4, 12, 4),
                                                  hidesUnderline: true,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 4),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4, 0, 0, 0),
                                              child: Text(
                                                'Traffic',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 4, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: FlutterFlowDropDown(
                                                  options: [
                                                    'Total Logs',
                                                    'IP of choice',
                                                    'Region'
                                                  ],
                                                  onChanged: (val) => setState(
                                                      () =>
                                                          dropDownValue2 = val),
                                                  width: 180,
                                                  height: 50,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                      ),
                                                  hintText: 'Please select...',
                                                  fillColor: Colors.white,
                                                  elevation: 2,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0,
                                                  borderRadius: 0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(12, 4, 12, 4),
                                                  hidesUnderline: true,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 24, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button-Login pressed ...');
                                      },
                                      text: ' Plot',
                                      options: FFButtonOptions(
                                        width: 190,
                                        height: 50,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.white,
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
