// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

Future<String> splashTimer() async {
  final completer = Completer();
  Timer(const Duration(seconds: 3), () => completer.complete());
  await completer.future;
  return "Ready";
}
