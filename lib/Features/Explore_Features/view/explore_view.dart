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
          const Row(
            children: [SearchInput()],
          ),
          SizedBox(height: Constants.screenSize(context).height * 0.012),
          exploreBody(),
        ],
      ),
    );
  }
}

Widget exploreBody() {
  const imageApi = "https://picsum.photos/200/";
  return Expanded(
    child: MasonryGridView.builder(
      itemCount: 20,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(3),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(imageApi), // Use the defined imageApi URL
        ),
      ),
    ),
  );
}
