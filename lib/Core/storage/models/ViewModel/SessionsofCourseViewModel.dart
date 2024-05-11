// ignore_for_file: non_constant_identifier_names

import 'package:duel/Core/Storage/models/User.dart';
import 'package:duel/Core/Storage/models/ViewModel/Courses.dart';
import 'package:duel/Core/Storage/models/ViewModel/Headline.dart';
import 'package:duel/Core/Storage/models/ViewModel/Meeting.dart';

class SessionsofCourseViewModel {
  User user;
  Courses courses;
  List<Headline> headline;
  List<Meeting> meetings;
  bool PurchaseStatus;

  SessionsofCourseViewModel({
    required this.user,
    required this.courses,
    required this.headline,
    required this.meetings,
    required this.PurchaseStatus,
  });
}
