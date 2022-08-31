class MeModel {
  int? id;
  String? createdAt;
  String? email;
  String? password;
  String? name;

  MeModel({this.id, this.createdAt, this.email, this.password, this.name});

  MeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    email = json['Email'];
    password = json['Password'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.email != null) {
      data['Email'] = this.email;
    }
    if (this.password != null) {
      data['Password'] = this.password;
    }
    if (this.name != null) {
      data['Name'] = this.name;
    }
    return data;
  }
}
