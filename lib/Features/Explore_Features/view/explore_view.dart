import 'package:duel/Core/Components/my_progress_bar.dart';
import 'package:duel/Core/Constant/base_url.dart';
import 'package:duel/Features/Explore_Features/bloc/explore_bloc.dart';
import 'package:duel/Features/Explore_Features/widget/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  @override
  void initState() {
    BlocProvider.of<ExploreBloc>(context).add(const FetchExploreEvent("3"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SearchInput(),
          const Divider(),
          BlocBuilder<ExploreBloc, ExploreState>(
            builder: (context, state) {
              if (state is ExploreSuccess) {
                final models = state.mysteries;
                return Expanded(
                  child: GridView.builder(
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
                      repeatPattern: QuiltedGridRepeatPattern.inverted,
                    ),
                    itemCount: models.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              "$baseUrlIMG${models[index].image}",
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
                  ),
                );
              }
              if (state is ExploreLoading) {
                return const MyProgressBar(
                  color: Colors.blue,
                );
              } else {
                return const MyProgressBar(
                  color: Colors.red,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
