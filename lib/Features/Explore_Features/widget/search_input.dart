import 'package:duel/Config/Constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({super.key});

  @override
  State<SearchInput> createState() => _SearchInputState();
}

final TextEditingController searchCTRL = TextEditingController();

class _SearchInputState extends State<SearchInput> {
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: Constants.screenSize(context).height * 0.04,
          horizontal: 25,
        ),
        child: TextField(
          controller: searchCTRL,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: 'جست و جو',
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: Constants.theme(context).surface,
              ),
              borderRadius: BorderRadius.circular(15.sp),
            ), // removes default border
            contentPadding: EdgeInsets.zero, // removes padding
          ),
          onChanged: (value) {
            setState(
              () {
                searchText = value;
              },
            );
          },
        ),
      ),
    );
  }
}
