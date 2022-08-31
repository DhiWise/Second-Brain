class PostSearchReq {
  String? query;

  PostSearchReq({this.query});

  PostSearchReq.fromJson(Map<String, dynamic> json) {
    query = json['query'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.query != null) {
      data['query'] = this.query;
    }
    return data;
  }
}
