import '../User.dart';
import 'Mystery.dart';

class Challengingmodel {
  int id;
  int coin;
  int userId;
  User? user;
  int mysteryId;
  Mystery? mystery;
  int stateChallenging;
  int? userSelectedId;
  User? userSelected;
  DateTime createDate;
  DateTime endTime;
  bool stateLike;
  bool stateSave;

  Challengingmodel({
    required this.id,
    required this.coin,
    required this.userId,
    this.user,
    required this.mysteryId,
    this.mystery,
    required this.stateChallenging,
    this.userSelectedId,
    this.userSelected,
    required this.createDate,
    required this.endTime,
    required this.stateLike,
    required this.stateSave,
  });

  factory Challengingmodel.fromJson(Map<String, dynamic> json) {
    return Challengingmodel(
      id: json['id'] ?? 0,
      coin: json['coin'] ?? 0,
      userId: json['userId'] ?? 0,
      user: User.deJsonUser(json['user']),
      mysteryId: json['mysteryId'] ?? 0,
      mystery: Mystery.fromJson(json['mystery']),
      createDate: json['crateDate'] == null
          ? DateTime.now()
          : DateTime.parse(json['crateDate']),
      endTime: json['endTime'] == null
          ? DateTime.now()
          : DateTime.parse(json['endTime']),
      stateChallenging: json['stateChallenging'] ?? 0,
      userSelectedId: json['userSelectedId'] ?? 0,
      userSelected: json['userSelected'] == null
          ? null
          : User.deJsonUser(json['userSelected']),
      // دیگر فیلدهای کلاس را مطابق با نیاز تعریف کنید
      stateLike: json['stateLike'] ?? false,
      stateSave: json['stateSave'] ?? false,
    );
  }

  static List<Challengingmodel> parseJSONChallenging(List<dynamic> jsonDatas) {
    List<Challengingmodel> challengingList = jsonDatas
        .map((item) => Challengingmodel.fromJson(item))
        .cast<Challengingmodel>()
        .toList();
    return challengingList;
  }
}
