import 'package:cloud_firestore/cloud_firestore.dart';

class AuditLogService {
  static Future<void> logAction(String userId, String action, String details) async {
    await FirebaseFirestore.instance.collection('audit_logs').add({
      'userId': userId,
      'action': action,
      'details': details,
      'timestamp': DateTime.now().toIso8601String(),
    });
  }
}
