import 'package:flutter/material.dart';

class ProfileCover extends StatelessWidget {
  final String imageUrl;
  ProfileCover({required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
        borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
      ),
    );
  }
}
