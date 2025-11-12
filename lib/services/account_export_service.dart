import 'package:cloud_firestore/cloud_firestore.dart';

class AccountExportService {
  static Future<Map<String, dynamic>> exportUserData(String userId) async {
    final userSnap = await FirebaseFirestore.instance.collection('users').doc(userId).get();
    final postsSnap = await FirebaseFirestore.instance.collection('posts').where('userId', isEqualTo: userId).get();
    return {
      'user': userSnap.data() ?? {},
      'posts': postsSnap.docs.map((d) => d.data()).toList(),
    };
  }
}
