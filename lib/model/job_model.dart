class JobModel {
  String id;
  String name;
  String category;
  String companyName;
  String companyLogo;
  String location;
  List about;
  List qualifications;
  List responsibilities;
  int createdAt;
  int updatedAt;

  JobModel({
    this.id,
    this.name,
    this.category,
    this.companyName,
    this.companyLogo,
    this.location,
    this.about,
    this.qualifications,
    this.responsibilities,
    this.createdAt,
    this.updatedAt,
  });

  JobModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
    companyName = json['companyName'];
    companyLogo = json['companyLogo'];
    location = json['location'];
    about = json['about'];
    qualifications = json['qualifications'];
    responsibilities = json['responsibilities'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'companyName': companyName,
      'companyaLogo': companyLogo,
      'location': location,
      'about': about,
      'qualifications': qualifications,
      'responsibilities': responsibilities,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
