import 'package:duel/Config/Constant/constants.dart';
import 'package:duel/Features/Explore_Features/widget/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SearchInput(),
          const Divider(
            color: Colors.black87,
          ),
          exploreBody(),
        ],
      ),
    );
  }
}

Widget exploreBody() {
  return Expanded(child: cardTile);
}

Padding cardTile = Padding(
  padding: const EdgeInsets.only(left: 4, right: 4, top: 0),
  child: GridView.builder(
    gridDelegate: SliverQuiltedGridDelegate(
      crossAxisCount: 3,
      mainAxisSpacing: 0,
      crossAxisSpacing: 2,
      pattern: const [
        QuiltedGridTile(2, 1),
        QuiltedGridTile(1, 1),
        QuiltedGridTile(1, 1),
        QuiltedGridTile(1, 1),
        QuiltedGridTile(1, 1),
      ],
      repeatPattern: QuiltedGridRepeatPattern.inverted,
    ),
    itemCount: 40,
    itemBuilder: (context, index) {
      return Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Image.network(
              "https://picsum.photos/200/",
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
          const Positioned(
            top: 5,
            left: 5,
            child: Icon(
              Icons.video_collection,
              color: Colors.white,
            ),
          ),
        ],
      );
    },
  ),
);
