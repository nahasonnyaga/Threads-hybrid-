import 'package:flutter/material.dart';

class LinkPreview extends StatelessWidget {
  final String url;
  final String? title;
  final String? summary;
  final String? imageUrl;
  LinkPreview({required this.url, this.title, this.summary, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        leading: imageUrl != null ? Image.network(imageUrl!, width: 44, height: 44, fit: BoxFit.cover) : null,
        title: Text(title ?? url, maxLines: 1, overflow: TextOverflow.ellipsis),
        subtitle: summary != null ? Text(summary!, maxLines: 2, overflow: TextOverflow.ellipsis) : null,
        onTap: () {/* TODO: launch url */},
      ),
    );
  }
}
