// To parse this JSON data, do
//
//     final notices = noticesFromJson(jsonString);

import 'dart:convert';

Notices noticesFromJson(String str) => Notices.fromJson(json.decode(str));

String noticesToJson(Notices data) => json.encode(data.toJson());

class Notices {
  int? id;
  String? title;
  String? date;
  String? description;
  DateTime? createdAt;
  DateTime? updatedAt;

  Notices({
    this.id,
    this.title,
    this.date,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory Notices.fromJson(Map<String, dynamic> json) => Notices(
    id: json["id"],
    title: json["title"],
    date: json["date"],
    description: json["description"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "date": date,
    "description": description,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}
