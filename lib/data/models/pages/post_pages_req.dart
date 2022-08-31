class PostPagesReq {
  Parent? parent;
  Properties? properties;

  PostPagesReq({this.parent, this.properties});

  PostPagesReq.fromJson(Map<String, dynamic> json) {
    parent = json['parent'] != null ? Parent.fromJson(json['parent']) : null;
    properties = json['properties'] != null
        ? Properties.fromJson(json['properties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.parent != null) {
      data['parent'] = this.parent?.toJson();
    }
    if (this.properties != null) {
      data['properties'] = this.properties?.toJson();
    }
    return data;
  }
}

class Parent {
  String? databaseId;

  Parent({this.databaseId});

  Parent.fromJson(Map<String, dynamic> json) {
    databaseId = json['database_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.databaseId != null) {
      data['database_id'] = this.databaseId;
    }
    return data;
  }
}

class Properties {
  Task? task;
  Date? date;

  Properties({this.task, this.date});

  Properties.fromJson(Map<String, dynamic> json) {
    task = json['task'] != null ? Task.fromJson(json['task']) : null;
    date = json['Date'] != null ? Date.fromJson(json['Date']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.task != null) {
      data['task'] = this.task?.toJson();
    }
    if (this.date != null) {
      data['Date'] = this.date?.toJson();
    }
    return data;
  }
}

class Task {
  List<RichText>? richText;

  Task({this.richText});

  Task.fromJson(Map<String, dynamic> json) {
    if (json['rich_text'] != null) {
      richText = <RichText>[];
      json['rich_text'].forEach((v) {
        richText?.add(RichText.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.richText != null) {
      data['rich_text'] = this.richText?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RichText {
  Text? text;

  RichText({this.text});

  RichText.fromJson(Map<String, dynamic> json) {
    text = json['text'] != null ? Text.fromJson(json['text']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.text != null) {
      data['text'] = this.text?.toJson();
    }
    return data;
  }
}

class Text {
  String? content;

  Text({this.content});

  Text.fromJson(Map<String, dynamic> json) {
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.content != null) {
      data['content'] = this.content;
    }
    return data;
  }
}

class Date {
  List<RichText>? richText;

  Date({this.richText});

  Date.fromJson(Map<String, dynamic> json) {
    if (json['rich_text'] != null) {
      richText = <RichText>[];
      json['rich_text'].forEach((v) {
        richText?.add(RichText.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.richText != null) {
      data['rich_text'] = this.richText?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
