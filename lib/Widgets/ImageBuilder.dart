import 'package:flutter/material.dart';
import 'package:navigation_go_router/Widgets/ImageTile.dart';
import '../components/ImageList.dart';

class ImageBuilder extends StatelessWidget {
  const ImageBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: images.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0),
      itemBuilder: (context, index) {
        return ImageTile(
          image: images[index],
        );
      },
    );
  }
}
