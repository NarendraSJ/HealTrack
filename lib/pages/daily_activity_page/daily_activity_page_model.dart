import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'daily_activity_page_widget.dart' show DailyActivityPageWidget;
import 'package:flutter/material.dart';

class DailyActivityPageModel extends FlutterFlowModel<DailyActivityPageWidget> {
  ///  Local state fields for this page.

  List<double> funcOut = [];
  void addToFuncOut(double item) => funcOut.add(item);
  void removeFromFuncOut(double item) => funcOut.remove(item);
  void removeAtIndexFromFuncOut(int index) => funcOut.removeAt(index);
  void insertAtIndexInFuncOut(int index, double item) =>
      funcOut.insert(index, item);
  void updateFuncOutAtIndex(int index, Function(double) updateFn) =>
      funcOut[index] = updateFn(funcOut[index]);

  ///  State fields for stateful widgets in this page.

  List<RealTimeValuesRecord>? dailyActivityPagePreviousSnapshot;
  // Stores action output result for [Firestore Query - Query a collection] action in DailyActivityPage widget.
  RealTimeValuesRecord? pgLoadQuery;
  // Stores action output result for [Backend Call - API (getSleep)] action in DailyActivityPage widget.
  ApiCallResponse? apiResult1rz;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
