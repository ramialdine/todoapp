import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for sign-Email widget.
  FocusNode? signEmailFocusNode;
  TextEditingController? signEmailTextController;
  String? Function(BuildContext, String?)? signEmailTextControllerValidator;
  String? _signEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for sign-Password widget.
  FocusNode? signPasswordFocusNode;
  TextEditingController? signPasswordTextController;
  late bool signPasswordVisibility;
  String? Function(BuildContext, String?)? signPasswordTextControllerValidator;
  String? _signPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for sign-ConfirmPassword widget.
  FocusNode? signConfirmPasswordFocusNode;
  TextEditingController? signConfirmPasswordTextController;
  late bool signConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      signConfirmPasswordTextControllerValidator;
  String? _signConfirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for loginEmail widget.
  FocusNode? loginEmailFocusNode;
  TextEditingController? loginEmailTextController;
  String? Function(BuildContext, String?)? loginEmailTextControllerValidator;
  String? _loginEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for loginPassword widget.
  FocusNode? loginPasswordFocusNode;
  TextEditingController? loginPasswordTextController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordTextControllerValidator;
  String? _loginPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    signEmailTextControllerValidator = _signEmailTextControllerValidator;
    signPasswordVisibility = false;
    signPasswordTextControllerValidator = _signPasswordTextControllerValidator;
    signConfirmPasswordVisibility = false;
    signConfirmPasswordTextControllerValidator =
        _signConfirmPasswordTextControllerValidator;
    loginEmailTextControllerValidator = _loginEmailTextControllerValidator;
    loginPasswordVisibility = false;
    loginPasswordTextControllerValidator =
        _loginPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signEmailFocusNode?.dispose();
    signEmailTextController?.dispose();

    signPasswordFocusNode?.dispose();
    signPasswordTextController?.dispose();

    signConfirmPasswordFocusNode?.dispose();
    signConfirmPasswordTextController?.dispose();

    loginEmailFocusNode?.dispose();
    loginEmailTextController?.dispose();

    loginPasswordFocusNode?.dispose();
    loginPasswordTextController?.dispose();
  }
}
