childrendrenrt 'package:flutter/material.dart';

class SecuritySettingsPage extends StatefulWidget {
  @override
  State<SecuritySettingsPage> createState() => _SecuritySettingsPageState();
}

class _SecuritySettingsPageState extends State<SecuritySettingsPage> {
  bool twoFA = false;
  bool biometric = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Security Settings')),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text('Use Two-Factor Authentication'),
            value: twoFA,
            onChanged: (v) => setState(() => twoFA = v),
          ),
          SwitchListTile(
            title: Text('Enable Biometric Login'),
            value: biometric,
            onChanged: (v) => setState(() => biometric = v),
          ),
        ],
      ),
    );
  }
}
