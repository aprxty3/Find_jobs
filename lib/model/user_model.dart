class userModel {
  String id;
  String name;
  String email;
  String password;
  String goal;

  userModel({
    this.id,
    this.name,
    this.email,
    this.password,
    this.goal,
  });

  userModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    goal = json['goal'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'goal': goal,
    };
  }
}
