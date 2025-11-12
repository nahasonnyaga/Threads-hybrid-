import 'package:flutter/material.dart';

class LoadingState extends StatelessWidget {
  final String? message;
  LoadingState({this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          if (message != null)
            Padding(
              padding: const EdgeInsets.all(14),
              child: Text(message!, style: TextStyle(fontSize: 16)),
            ),
        ],
      ),
    );
  }
}
