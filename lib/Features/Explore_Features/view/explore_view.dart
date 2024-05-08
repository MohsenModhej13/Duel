import 'package:duel/Config/Constant/constants.dart';
import 'package:duel/Features/Explore_Features/widget/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          const Row(
            children: [
              SearchInput(),
            ],
          ),
          SizedBox(height: Constants.screenSize(context).height * 0.01),
          exploreBody(),
        ],
      ),
    );
  }
}

Widget exploreBody() {
  const imageApi = "https://picsum.photos/200/";
  return Expanded(child: cardTile);
}

GridView cardTile = GridView.builder(
  gridDelegate: SliverQuiltedGridDelegate(
      crossAxisCount: 3,
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
      pattern: const [
        QuiltedGridTile(2, 1),
        QuiltedGridTile(1, 1),
        QuiltedGridTile(1, 1),
        QuiltedGridTile(1, 1),
        QuiltedGridTile(1, 1),
      ],
      repeatPattern: QuiltedGridRepeatPattern.inverted),
  itemCount: 50,
  itemBuilder: (context, index) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            "https://picsum.photos/200/",
            fit: BoxFit.cover,
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
);
