class PostCreationHelper {
  static String preparePostContent({required String text, List<String>? hashtags, List<String>? mentions}) {
    final tags = hashtags?.map((h) => '#$h').join(' ') ?? '';
    final ment = mentions?.map((m) => '@$m').join(' ') ?? '';
    return '$text\n$tags\n$ment';
  }

  static bool isValidPost(String text) => text.trim().isNotEmpty && text.trim().length <= 240;
}
