import 'package:flutter/material.dart';
import '../providers/settings_provider.dart';

class UserSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Normally provide real provider; here is a static example
    final settings = SettingsProvider();

    return Scaffold(
      appBar: AppBar(title: Text('User Settings')),
      body: ListView(
        children: [
          SwitchListTile(
            value: settings.darkMode,
            title: Text('Dark Mode'),
            onChanged: (v) => settings.toggleDarkMode(v),
          ),
          SwitchListTile(
            value: settings.pushEnabled,
            title: Text('Notifications'),
            onChanged: (v) => settings.togglePush(v),
          ),
          ListTile(
            title: Text('Change Password'),
            trailing: Icon(Icons.chevron_right),
            onTap: () => Navigator.pushNamed(context, '/change_password'),
          ),
          ListTile(
            title: Text('Delete Account'),
            trailing: Icon(Icons.delete, color: Colors.red),
            onTap: () => Navigator.pushNamed(context, '/delete_account'),
          ),
        ],
      ),
    );
  }
}
