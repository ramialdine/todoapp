import '/flutter_flow/flutter_flow_util.dart';
import 'add_task_widget.dart' show AddTaskWidget;
import 'package:flutter/material.dart';

class AddTaskModel extends FlutterFlowModel<AddTaskWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for addtskTitle widget.
  FocusNode? addtskTitleFocusNode;
  TextEditingController? addtskTitleTextController;
  String? Function(BuildContext, String?)? addtskTitleTextControllerValidator;
  // State field(s) for adtskDetails widget.
  FocusNode? adtskDetailsFocusNode;
  TextEditingController? adtskDetailsTextController;
  String? Function(BuildContext, String?)? adtskDetailsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    addtskTitleFocusNode?.dispose();
    addtskTitleTextController?.dispose();

    adtskDetailsFocusNode?.dispose();
    adtskDetailsTextController?.dispose();
  }
}
