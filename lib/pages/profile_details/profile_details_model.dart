import '/flutter_flow/flutter_flow_util.dart';
import 'profile_details_widget.dart' show ProfileDetailsWidget;
import 'package:flutter/material.dart';

class ProfileDetailsModel extends FlutterFlowModel<ProfileDetailsWidget> {
  ///  Local state fields for this page.

  bool dos = false;

  bool doa = false;

  bool dod = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  // State field(s) for Gender widget.
  FocusNode? genderFocusNode;
  TextEditingController? genderTextController;
  String? Function(BuildContext, String?)? genderTextControllerValidator;
  // State field(s) for Ad widget.
  FocusNode? adFocusNode;
  TextEditingController? adTextController;
  String? Function(BuildContext, String?)? adTextControllerValidator;
  // State field(s) for dos widget.
  FocusNode? dosFocusNode;
  TextEditingController? dosTextController;
  String? Function(BuildContext, String?)? dosTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for doa widget.
  FocusNode? doaFocusNode;
  TextEditingController? doaTextController;
  String? Function(BuildContext, String?)? doaTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for dod widget.
  FocusNode? dodFocusNode;
  TextEditingController? dodTextController;
  String? Function(BuildContext, String?)? dodTextControllerValidator;
  DateTime? datePicked3;
  // State field(s) for docname widget.
  FocusNode? docnameFocusNode;
  TextEditingController? docnameTextController;
  String? Function(BuildContext, String?)? docnameTextControllerValidator;
  // State field(s) for emergencycontact widget.
  FocusNode? emergencycontactFocusNode;
  TextEditingController? emergencycontactTextController;
  String? Function(BuildContext, String?)?
      emergencycontactTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    ageFocusNode?.dispose();
    ageTextController?.dispose();

    genderFocusNode?.dispose();
    genderTextController?.dispose();

    adFocusNode?.dispose();
    adTextController?.dispose();

    dosFocusNode?.dispose();
    dosTextController?.dispose();

    doaFocusNode?.dispose();
    doaTextController?.dispose();

    dodFocusNode?.dispose();
    dodTextController?.dispose();

    docnameFocusNode?.dispose();
    docnameTextController?.dispose();

    emergencycontactFocusNode?.dispose();
    emergencycontactTextController?.dispose();
  }
}
