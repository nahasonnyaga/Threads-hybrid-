import 'package:flutter/material.dart';

class PostAnalyticsBar extends StatelessWidget {
  final int likes, comments, shares, bookmarks;
  PostAnalyticsBar({required this.likes, required this.comments, required this.shares, required this.bookmarks});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _IconStat(Icons.favorite, likes),
        _IconStat(Icons.comment, comments),
        _IconStat(Icons.share, shares),
        _IconStat(Icons.bookmark, bookmarks),
      ],
    );
  }
}

class _IconStat extends StatelessWidget {
  final IconData icon;
  final int value;
  _IconStat(this.icon, this.value);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 22, color: Colors.blueGrey),
        SizedBox(width: 3),
        Text(value.toString(), style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
