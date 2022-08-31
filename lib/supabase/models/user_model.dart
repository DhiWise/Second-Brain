class UserModel {
  int? id;
  String? createdAt;
  String? name;
  String? email;
  String? password;

  UserModel({this.id, this.createdAt, this.name, this.email, this.password});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    createdAt = json['created_at'] as String;
    name = json['Name'] as String;
    email = json['Email'] as String;
    password = json['Password'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.name != null) {
      data['Name'] = this.name;
    }
    if (this.email != null) {
      data['Email'] = this.email;
    }
    if (this.password != null) {
      data['Password'] = this.password;
    }
    return data;
  }
}
