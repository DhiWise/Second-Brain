class GrowthModel {
  int? id;
  String? createdAt;
  String? date;
  int? growth;

  GrowthModel({this.id, this.createdAt, this.date, this.growth});

  GrowthModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    createdAt = json['created_at'] as String;
    date = json['date'] as String;
    growth = json['growth'] as int;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.date != null) {
      data['date'] = this.date;
    }
    if (this.growth != null) {
      data['growth'] = this.growth;
    }
    return data;
  }
}
