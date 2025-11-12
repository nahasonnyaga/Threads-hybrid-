import 'package:flutter/material.dart';

class ErrorBoundary extends StatefulWidget {
  final Widget child;
  ErrorBoundary({required this.child});

  @override
  _ErrorBoundaryState createState() => _ErrorBoundaryState();
}

class _ErrorBoundaryState extends State<ErrorBoundary> {
  Object? _error;

  @override
  Widget build(BuildContext context) {
    if (_error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.bug_report, color: Colors.red, size: 48),
            Text('Something went wrong.', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18)),
            Text(_error.toString(), style: TextStyle(color: Colors.black54)),
          ],
        ),
      );
    }
    return ErrorWidget.builder = (details) {
      setState(() => _error = details.exception);
      return Container();
    }, widget.child;
  }
}
