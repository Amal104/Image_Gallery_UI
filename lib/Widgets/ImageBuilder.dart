import 'package:flutter/material.dart';
import 'package:navigation_go_router/Widgets/ImageTile.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import '../components/ImageList.dart';

class ImageBuilder extends StatelessWidget {
  const ImageBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
            shrinkWrap: true,
            reverse: false,
            physics: const BouncingScrollPhysics(),
            crossAxisSpacing: 10,
            itemCount: images.length,
            crossAxisCount: 4,
            itemBuilder: (ctx, index) {
              return ImageTile(image: images[index], height: index.isEven ? 250 : 350,);
            },
            staggeredTileBuilder: (_) {
              return const StaggeredTile.fit(2);
            });
  }
}
