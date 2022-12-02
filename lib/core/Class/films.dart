// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Films {
  int? id;
  String? filmName;
  String? path;
  String? Description;
  Films({
    this.id,
    this.filmName,
    this.path,
    this.Description,
  });

  Films copyWith({
    int? id,
    String? filmName,
    String? path,
    String? Description,
  }) {
    return Films(
      id: id ?? this.id,
      filmName: filmName ?? this.filmName,
      path: path ?? this.path,
      Description: Description ?? this.Description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'filmName': filmName,
      'path': path,
      'Description': Description,
    };
  }

  factory Films.fromMap(Map<String, dynamic> map) {
    return Films(
      id: map['id'] != null ? map['id'] as int : null,
      filmName: map['filmName'] != null ? map['filmName'] as String : null,
      path: map['path'] != null ? map['path'] as String : null,
      Description:
          map['Description'] != null ? map['Description'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Films.fromJson(String source) =>
      Films.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Films(id: $id, filmName: $filmName, path: $path, Description: $Description)';
  }

  @override
  bool operator ==(covariant Films other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.filmName == filmName &&
        other.path == path &&
        other.Description == Description;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        filmName.hashCode ^
        path.hashCode ^
        Description.hashCode;
  }
}

List<Films> filmsList = [
  Films(
      id: 0,
      filmName: "Iron Fist",
      path: "assets/images/iron.jpg",
      Description: "A good tv show"),
  Films(
      id: 1,
      filmName: "Daredevil",
      path: "assets/images/dd.jpg",
      Description: "A good tv show"),
  Films(
      id: 2,
      filmName: "Luck Cage",
      path: "assets/images/luck.jpg",
      Description: "A good tv show"),
  Films(
      id: 3,
      filmName: "Jessica Jones",
      path: "assets/images/jj.jpg",
      Description: "A good tv show"),
  Films(
      id: 4,
      filmName: "The Queen's Gambiy",
      path: "assets/images/queen.jpg",
      Description: "A good tv show"),
  Films(
      id: 5,
      filmName: "Dark",
      path: "assets/images/dark.jpg",
      Description: "A good tv show"),
];
