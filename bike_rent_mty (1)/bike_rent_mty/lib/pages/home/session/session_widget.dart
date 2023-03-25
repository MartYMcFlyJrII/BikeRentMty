import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import '/pages/showtime/change_bikes/change_bikes_widget.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'session_model.dart';
export 'session_model.dart';

class SessionWidget extends StatefulWidget {
  const SessionWidget({Key? key}) : super(key: key);

  @override
  _SessionWidgetState createState() => _SessionWidgetState();
}

class _SessionWidgetState extends State<SessionWidget> {
  late SessionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SessionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F4F8),
        automaticallyImplyLeading: false,
        title: Text(
          'Hi, David',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Outfit',
                color: Color(0xFF0F1113),
                fontSize: 32.0,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        NavBarPage(initialPage: 'profilePage'),
                  ),
                );
              },
              child: Container(
                width: 50.0,
                height: 50.0,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                child: ListTile(
                  leading: Icon(
                    Icons.twelve_mp,
                  ),
                  title: Text(
                    'Adult Bike 1  - Pin: XXXX',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Overpass',
                          color: Colors.white,
                        ),
                  ),
                  subtitle: Text(
                    'Entry, One',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Overpass',
                          color: Colors.white,
                        ),
                  ),
                  tileColor: Colors.black,
                  dense: false,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                child: ListTile(
                  leading: Icon(
                    Icons.twelve_mp,
                  ),
                  title: Text(
                    'Adult Bike 5  - Pin: XXXX',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Overpass',
                          color: Colors.white,
                        ),
                  ),
                  subtitle: Text(
                    'Entry, One',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Overpass',
                          color: Colors.white,
                        ),
                  ),
                  tileColor: Colors.black,
                  dense: false,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                child: ListTile(
                  leading: Icon(
                    Icons.twelve_mp,
                  ),
                  title: Text(
                    'Kid Bike 21 - Pin: XXXX',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Overpass',
                          color: Colors.white,
                        ),
                  ),
                  subtitle: Text(
                    'Entry, One',
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Overpass',
                          color: Colors.white,
                        ),
                  ),
                  tileColor: Colors.black,
                  dense: false,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                child: ListTile(
                  leading: Icon(
                    Icons.twelve_mp,
                  ),
                  title: Text(
                    'Kid Bike 22  - Pin: XXXX',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Overpass',
                          color: Colors.white,
                        ),
                  ),
                  subtitle: Text(
                    'Entry, One',
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Overpass',
                          color: Colors.white,
                        ),
                  ),
                  tileColor: Colors.black,
                  dense: false,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.twelve_mp,
                ),
                title: Text(
                  'Kid Bike 23  - Pin: XXXX',
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Overpass',
                        color: Colors.white,
                      ),
                ),
                subtitle: Text(
                  'Entry, One',
                  style: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Overpass',
                        color: Colors.white,
                      ),
                ),
                tileColor: Colors.black,
                dense: false,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 8.0),
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 0.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 12.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.918,
                        height: 273.3,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x34090F13),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 8.0, 12.0, 8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Time of current \nreservation',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Overpass',
                                          color: Colors.white,
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FlutterFlowTimer(
                                      initialTime: _model.timerMilliseconds1,
                                      getDisplayTime: (value) =>
                                          StopWatchTimer.getDisplayTime(value,
                                              milliSecond: false),
                                      timer: _model.timerController1,
                                      updateStateInterval:
                                          Duration(milliseconds: 1000),
                                      onChanged:
                                          (value, displayTime, shouldUpdate) {
                                        _model.timerMilliseconds1 = value;
                                        _model.timerValue1 = displayTime;
                                        if (shouldUpdate) setState(() {});
                                      },
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .background,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 12.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.989,
                  height: 201.1,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x34090F13),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'Check the status of your bikes',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlutterFlowTimer(
                              initialTime: _model.timerMilliseconds2,
                              getDisplayTime: (value) =>
                                  StopWatchTimer.getDisplayTime(
                                value,
                                hours: false,
                                milliSecond: false,
                              ),
                              timer: _model.timerController2,
                              updateStateInterval: Duration(milliseconds: 1000),
                              onChanged: (value, displayTime, shouldUpdate) {
                                _model.timerMilliseconds2 = value;
                                _model.timerValue2 = displayTime;
                                if (shouldUpdate) setState(() {});
                              },
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 50.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 24.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 250),
                                      reverseDuration:
                                          Duration(milliseconds: 250),
                                      child: ChangeBikesWidget(),
                                    ),
                                  );
                                },
                                text: 'Change',
                                options: FFButtonOptions(
                                  width: 170.0,
                                  height: 36.7,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Colors.white,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Overpass',
                                        color: Colors.black,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 200.0,
              ),
              Text(
                'Book Information',
                style: FlutterFlowTheme.of(context).subtitle1.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
