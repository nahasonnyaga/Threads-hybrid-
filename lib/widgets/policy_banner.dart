import 'package:flutter/material.dart';

class PolicyBanner extends StatelessWidget {
  final String policyText;
  final VoidCallback? onReadMore;
  PolicyBanner({required this.policyText, this.onReadMore});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.yellow[200],
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Expanded(child: Text(policyText, style: TextStyle(fontSize: 14))),
            TextButton(child: Text('Read more'), onPressed: onReadMore),
          ],
        ),
      ),
    );
  }
}
