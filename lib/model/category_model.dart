class CateModel {
  String id;
  String name;
  String imageUrl;
  int createdAt;
  int updatedAt;

  CateModel({
    this.id,
    this.name,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  CateModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'createdAt': createdAt,
      'upatedAt': updatedAt,

    };
  }
}
