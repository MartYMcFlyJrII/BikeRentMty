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

class SessionModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue2;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue3;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue4;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue5;
  // State field(s) for Timer widget.
  int timerMilliseconds1 = 0;
  String timerValue1 = StopWatchTimer.getDisplayTime(0, milliSecond: false);
  StopWatchTimer timerController1 = StopWatchTimer(mode: StopWatchMode.countUp);

  // State field(s) for Timer widget.
  int timerMilliseconds2 = 240000;
  String timerValue2 = StopWatchTimer.getDisplayTime(
    240000,
    hours: false,
    milliSecond: false,
  );
  StopWatchTimer timerController2 =
      StopWatchTimer(mode: StopWatchMode.countDown);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    timerController1.dispose();
    timerController2.dispose();
  }

  /// Additional helper methods are added here.

}
