import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Components {
  Widget appBarJoinnus(String imageName, double imageHeight) {
    return AppBar(
      title: Image.asset(
        imageName,
        height: imageHeight,
      ),
      elevation: 0,
    );
  }

  Widget image(String imageUrl) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        placeholder: (context, url) => Container(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}

final components = Components();
