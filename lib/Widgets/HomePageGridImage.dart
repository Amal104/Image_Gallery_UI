import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
    final String image;

  const CachedImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.cover,
            placeholder: (context, url) => Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Center(child:Image.asset('assets/5203299.jpg',fit: BoxFit.cover,) ),
          );
  }
}