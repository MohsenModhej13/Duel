import 'package:duel/Config/Constant/constants.dart';
import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Features/Home_Features/model/story_people_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget storySection(BuildContext context) {
  return Container(
    color: Colors.transparent,
    width: Constants.screenSize(context).width,
    height: Constants.screenSize(context).height * 0.13,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: storyPeopleList.length,
      itemBuilder: (context, index) {
        final storyPerson = storyPeopleList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  storyPerson['image'].toString(),
                  fit: BoxFit.contain,
                  width: Constants.screenSize(context).width * 0.14,
                ),
              ),
              MyText(
                title: storyPerson['name'].toString(),
                style: TextStyle(
                  fontFamily: 'dana_light',
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
