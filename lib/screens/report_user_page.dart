import 'package:flutter/material.dart';

class ReportUserPage extends StatefulWidget {
  final String userId;
  ReportUserPage({required this.userId});

  @override
  State<ReportUserPage> createState() => _ReportUserPageState();
}

class _ReportUserPageState extends State<ReportUserPage> {
  final _reasonController = TextEditingController();

  Future<void> submitReport() async {
    if (_reasonController.text.isNotEmpty) {
      // TODO: Send report to Firestore or your backend API
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Report submitted. Thank you!')));
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Report User')),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Text('Report inappropriate or abusive behavior.'),
            TextField(
              controller: _reasonController,
              decoration: InputDecoration(labelText: 'Describe the problem'),
              maxLines: 3,
            ),
            SizedBox(height: 16),
            ElevatedButton(onPressed: submitReport, child: Text('Report')),
          ],
        ),
      ),
    );
  }
}
