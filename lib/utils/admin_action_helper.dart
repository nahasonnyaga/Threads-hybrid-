class AdminActionHelper {
  static Future<void> banUser(String userId) async {
    // Integrate with Firestore/admin API in real use
    print('User $userId has been banned.');
  }

  static Future<void> approvePost(String postId) async {
    print('Post $postId has been approved.');
  }
}
