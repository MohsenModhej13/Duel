import 'dart:convert';

class ProfileItem {
  final int id;
  final String firstName;
  final String lastName;
  final String displayUsername;
  final String? photoFileName;
  final String? DisplayName;

  ProfileItem({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.displayUsername,
    required this.photoFileName,
    required this.DisplayName,
  });
  factory ProfileItem.fromJson(Map<String, String> json) {
    return ProfileItem(
      id: int.parse(json['id'].toString()),
      firstName: json['firstName'].toString(),
      lastName: json['lastName'].toString(),
      displayUsername: json['displayusername'].toString(),
      DisplayName: json['DisplayName'].toString(),
      photoFileName: json['PhotoFileName'].toString(),
    );
  }

  List<ProfileItem> parseUserProfiles(String jsonStr) {
    final List<dynamic> jsonArray = jsonDecode(jsonStr);
    final List<Map<String, dynamic>> maps =
        List<Map<String, dynamic>>.from(json.decode(jsonStr));

    return maps
        .map((map) => ProfileItem(
              id: int.parse(map['id'].toString()),
              firstName: map['firstName'].toString(),
              lastName: map['lastName'].toString(),
              displayUsername: map['displayusername'].toString(),
              DisplayName: map['displayName'].toString(),
              photoFileName: map['PhotoFileName'] == "Null"
                  ? map['PhotoFileName'].toString()
                  : "",
            ))
        .toList();
  }
}
