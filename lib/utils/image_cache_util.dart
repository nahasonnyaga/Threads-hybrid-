import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageCacheUtil {
  static Widget network(String url, {double? height, double? width, BoxFit fit = BoxFit.cover}) {
    return CachedNetworkImage(
      imageUrl: url,
      height: height,
      width: width,
      fit: fit,
      placeholder: (ctx, _) => Center(child: CircularProgressIndicator()),
      errorWidget: (ctx, _, __) => Icon(Icons.broken_image, color: Colors.red),
    );
  }
}
