class GetAooHResp {
  String? object;
  String? type;
  String? id;
  bool? checkbox;

  GetAooHResp({this.object, this.type, this.id, this.checkbox});

  GetAooHResp.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    type = json['type'];
    id = json['id'];
    checkbox = json['checkbox'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.object != null) {
      data['object'] = this.object;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.checkbox != null) {
      data['checkbox'] = this.checkbox;
    }
    return data;
  }
}
