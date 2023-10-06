// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!

class LoadingWidget extends StatefulWidget {
  LoadingWidget({
    super.key,
    required this.width,
    required this.height,
    this.value,
    this.color,
  });

  final double? width;
  final double? height;
  final double? value;
  final Color? color;

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  @override
  Widget build(BuildContext context) => SizedBox(
        width: widget.width,
        height: widget.height,
        child: Center(
          child: CircularProgressIndicator(
            value: widget.value,
            color: widget.color,
          ),
        ),
      );
}
