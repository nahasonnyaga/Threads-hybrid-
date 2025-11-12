import 'package:flutter/material.dart';

String formatHashtags(String text) {
  final regex = RegExp(r'(#[\w]+)');
  return text.replaceAllMapped(regex, (match) => '[${match.group(0)}]');
}

String formatMentions(String text) {
  final regex = RegExp(r'@[\w]+');
  return text.replaceAllMapped(regex, (match) => '<${match.group(0)}>');
}

String limitText(String text, int maxLen) {
  if (text.length <= maxLen) return text;
  return text.substring(0, maxLen) + '...';
}
