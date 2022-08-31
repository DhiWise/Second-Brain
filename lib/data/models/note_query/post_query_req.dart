class PostQueryReq {
  Filter? filter;

  PostQueryReq({this.filter});

  PostQueryReq.fromJson(Map<String, dynamic> json) {
    filter = json['filter'] != null ? Filter.fromJson(json['filter']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.filter != null) {
      data['filter'] = this.filter?.toJson();
    }
    return data;
  }
}

class Filter {
  String? property;
  Date? date;

  Filter({this.property, this.date});

  Filter.fromJson(Map<String, dynamic> json) {
    property = json['property'];
    date = json['date'] != null ? Date.fromJson(json['date']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.property != null) {
      data['property'] = this.property;
    }
    if (this.date != null) {
      data['date'] = this.date?.toJson();
    }
    return data;
  }
}

class Date {
  String? equals;

  Date({this.equals});

  Date.fromJson(Map<String, dynamic> json) {
    equals = json['equals'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.equals != null) {
      data['equals'] = this.equals;
    }
    return data;
  }
}
