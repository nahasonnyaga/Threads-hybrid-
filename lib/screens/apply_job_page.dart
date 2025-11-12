import 'package:flutter/material.dart';

class ApplyJobPage extends StatefulWidget {
  final String jobTitle;
  ApplyJobPage({required this.jobTitle});

  @override
  State<ApplyJobPage> createState() => _ApplyJobPageState();
}

class _ApplyJobPageState extends State<ApplyJobPage> {
  final _cvController = TextEditingController();
  Future<void> submitApplication() async {
    // TODO: Integrate job application API/storage
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Application submitted for "${widget.jobTitle}".')),
    );
    _cvController.clear();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Apply for ${widget.jobTitle}')),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            TextField(controller: _cvController, decoration: InputDecoration(labelText: 'CV, LinkedIn, or pitch')),
            SizedBox(height: 12),
            ElevatedButton(onPressed: submitApplication, child: Text('Apply')),
          ],
        ),
      ),
    );
  }
}
