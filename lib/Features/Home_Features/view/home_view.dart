import 'package:cached_network_image/cached_network_image.dart';
import 'package:duel/Core/Components/my_drawer.dart';
import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/Constant/constants.dart';
import 'package:duel/Core/Layout/responsive_layout.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:duel/Features/Challenges_Features/widget/start_challenge_button.dart';
import 'package:duel/Features/Home_Features/bloc/get_mystery_bloc.dart';
import 'package:duel/Features/Home_Features/widget/story_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/Constant/base_url.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    BlocProvider.of<GetMysteryBloc>(context).add(const CallMysteryEvent("3"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          drawer: const MyDrawer(),
          appBar: AppBar(
            centerTitle: true,
            title: MyText(
              title: 'Duel',
              style: TextStyle(
                fontFamily: 'dana_bold',
                fontSize: ResponsiveLayout.isTablet(context) ? 20.sp : 19.sp,
              ),
            ),
            actions: [
              Icon(
                Icons.notifications_outlined,
                color: Constants.theme(context).primary,
                size: 27,
              ),
              const SizedBox(width: 4),
              Assets.icons.messages.image(
                color: Constants.theme(context).primary,
                filterQuality: FilterQuality.high,
              ),
              const SizedBox(width: 6),
            ],
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Constants.theme(context).background,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                storySection(context),
                const Divider(),
                BlocBuilder<GetMysteryBloc, GetMysteryState>(
                  builder: (context, state) {
                    if (state is GetMysterySuccess) {
                      final models = state.mysteries;
                      return ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: models.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(3),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Column(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 9 / 16,
                                    child: Image.network(
                                        "$baseUrlIMG${models[index].image}"),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }
                    if (state is GetMysteryLoading) {
                      return const CircularProgressIndicator(
                        color: Colors.blue,
                      );
                    } else {
                      return const CircularProgressIndicator(
                        color: Colors.red,
                      );
                    }
                  },
                ),
                Container(
                  decoration: ShapeDecoration(
                    color: Constants.theme(context).surface.withOpacity(0.7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(20.sp),
                        topEnd: Radius.circular(20.sp),
                        topStart: Radius.circular(20.sp),
                      ),
                    ),
                  ),
                  padding: EdgeInsets.all(8.sp),
                  child: MyText(
                    title: 'کوچولووووووووو جر نزن',
                    style: TextStyle(
                      fontSize: 9.sp,
                      fontFamily: 'dana_regular',
                      color: Constants.theme(context).primary,
                    ),
                  ),
                ),
                SizedBox(height: 7.sp),
                const StartChallengeButton(),
                SizedBox(
                    height: Constants.screenSize(context).height * 0.001.sp),
                Divider(color: Constants.theme(context).surface),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Assets.icons.archive
                          .image(color: Constants.theme(context).primary),
                      Assets.icons.export
                          .image(color: Constants.theme(context).primary),
                      const Spacer(),
                      Wrap(
                        children: [
                          Assets.icons.comments.image(
                            color: Constants.theme(context).primary,
                          ),
                          Assets.icons.like.image(
                            color: Constants.theme(context).primary,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
