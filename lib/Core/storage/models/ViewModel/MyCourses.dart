import '../User.dart';
import 'Courses.dart';

class MyCourses {
  int id;
  int stateCourse;
  int coursesId;
  int userId;
  User user;
  Courses courses;

  MyCourses({
    required this.id,
    required this.stateCourse,
    required this.coursesId,
    required this.userId,
    required this.user,
    required this.courses,
  });
}
