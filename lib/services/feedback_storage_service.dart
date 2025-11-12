import 'package:cloud_firestore/cloud_firestore.dart';

class FeedbackStorageService {
  static Future<void> storeFeedback(String userId, String message) async {
    await FirebaseFirestore.instance.collection('feedback').add({
      'userId': userId,
      'message': message,
      'date': DateTime.now().toIso8601String(),
    });
  }
}
