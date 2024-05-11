import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/Constant/base_url.dart';
import 'package:duel/Core/Constant/constants.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:duel/Features/Challenges_Features/widget/start_challenge_button.dart';
import 'package:duel/Features/Home_Features/bloc/get_mystery_bloc.dart';
import 'package:duel/Features/Home_Features/widget/post_banner_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const String postSubText =
    'چه کسی عاشق معما و بازی‌های فکری چالش برانگیز نیست؟ معماها به ما کمک می‌کنند بیشتر راجع به مسائل مختلف فکر کنم و فکر خودمان را به چالش بکشیم. اغلب معماها از تکنیک‌هایی استفاده می‌کنند که ذهن ...';

class PostSection extends StatefulWidget {
  const PostSection({super.key});

  @override
  State<PostSection> createState() => _PostSectionState();
}

class _PostSectionState extends State<PostSection> {
  @override
  void initState() {
    BlocProvider.of<GetMysteryBloc>(context).add(const CallMysteryEvent("1"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        postBannerStatus(context),
        BlocBuilder<GetMysteryBloc, GetMysteryState>(
          builder: (context, state) {
            if (state is GetMysterySuccess) {
              final models = state.mysteries;
              return ListView.builder(
                shrinkWrap: true,
                itemCount: models.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: Constants.screenSize(context).width * 0.8,
                    height: Constants.screenSize(context).height * 0.3,
                    color: Colors.amber,
                    child: Image.network(models[index].image),
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
        Positioned(
          right: 10,
          top: Constants.screenSize(context).height * 0.01,
          child: Container(
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
        ),
        SizedBox(height: 7.sp),
        const StartChallengeButton(),
        SizedBox(height: Constants.screenSize(context).height * 0.001.sp),
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
    );
  }
}
