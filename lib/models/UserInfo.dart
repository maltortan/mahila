// To parse this JSON data, do
//
//     final userInfo = userInfoFromJson(jsonString);

import 'dart:convert';

UserInfo userInfoFromJson(String str) => UserInfo.fromJson(json.decode(str));

String userInfoToJson(UserInfo data) => json.encode(data.toJson());

class UserInfo {
  int? id;
  String? firstName;
  String? middleName;
  String? lastName;
  String? age;
  String? mobileNumber;
  String? phoneNumber;
  String? email;
  bool? userinfoStatus;
  DateTime? createdAt;
  DateTime? updatedAt;

  UserInfo({
    this.id,
    this.firstName,
    this.middleName,
    this.lastName,
    this.age,
    this.mobileNumber,
    this.phoneNumber,
    this.email,
    this.userinfoStatus,
    this.createdAt,
    this.updatedAt,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
    id: json["id"],
    firstName: json["first_name"],
    middleName: json["middle_name"],
    lastName: json["last_name"],
    age: json["age"],
    mobileNumber: json["mobile_number"],
    phoneNumber: json["phone_number"],
    email: json["email"],
    userinfoStatus: json["userinfo_status"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "middle_name": middleName,
    "last_name": lastName,
    "age": age,
    "mobile_number": mobileNumber,
    "phone_number": phoneNumber,
    "email": email,
    "userinfo_status": userinfoStatus,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}
