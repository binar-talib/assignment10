import 'dart:convert';

class DataModel {
  final int id;
  final String image;
  final String title;
  final String description;
  DataModel({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
  });

  DataModel copyWith({
    int? id,
    String? image,
    String? title,
    String? description,
  }) {
    return DataModel(
      id: id ?? this.id,
      image: image ?? this.image,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  Map<String, Object> toMap() {
    return {
      'id': id,
      'title': title,
      'image': image,
      'description': description,
    };
  }

  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
        id: map['id'] ?? 0,
        image: map['image'] ?? '',
        title: map['title'] ?? '',
        description: map['description'] ?? '');
  }

  String toJson() => json.encode(toMap());

  factory DataModel.fromJson(String source) =>
      DataModel.fromMap(json.decode(source));
}
