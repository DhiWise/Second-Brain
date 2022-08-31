class GetAooHResp {
  String? object;
  List<Results>? results;
  Null? nextCursor;
  bool? hasMore;
  String? type;
  PropertyItem? propertyItem;

  GetAooHResp(
      {this.object,
      this.results,
      this.nextCursor,
      this.hasMore,
      this.type,
      this.propertyItem});

  GetAooHResp.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
    nextCursor = json['next_cursor'];
    hasMore = json['has_more'];
    type = json['type'];
    propertyItem = json['property_item'] != null
        ? PropertyItem.fromJson(json['property_item'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.object != null) {
      data['object'] = this.object;
    }
    if (this.results != null) {
      data['results'] = this.results?.map((v) => v.toJson()).toList();
    }
    if (this.nextCursor != null) {
      data['next_cursor'] = this.nextCursor;
    }
    if (this.hasMore != null) {
      data['has_more'] = this.hasMore;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.propertyItem != null) {
      data['property_item'] = this.propertyItem?.toJson();
    }
    return data;
  }
}

class Results {
  String? object;
  String? type;
  String? id;
  RichText? richText;

  Results({this.object, this.type, this.id, this.richText});

  Results.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    type = json['type'];
    id = json['id'];
    richText =
        json['rich_text'] != null ? RichText.fromJson(json['rich_text']) : null;
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
    if (this.richText != null) {
      data['rich_text'] = this.richText?.toJson();
    }
    return data;
  }
}

class RichText {
  String? type;
  Text? text;
  Annotations? annotations;
  String? plainText;
  Null? href;

  RichText({this.type, this.text, this.annotations, this.plainText, this.href});

  RichText.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    text = json['text'] != null ? Text.fromJson(json['text']) : null;
    annotations = json['annotations'] != null
        ? Annotations.fromJson(json['annotations'])
        : null;
    plainText = json['plain_text'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.text != null) {
      data['text'] = this.text?.toJson();
    }
    if (this.annotations != null) {
      data['annotations'] = this.annotations?.toJson();
    }
    if (this.plainText != null) {
      data['plain_text'] = this.plainText;
    }
    if (this.href != null) {
      data['href'] = this.href;
    }
    return data;
  }
}

class Text {
  String? content;
  Null? link;

  Text({this.content, this.link});

  Text.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.content != null) {
      data['content'] = this.content;
    }
    if (this.link != null) {
      data['link'] = this.link;
    }
    return data;
  }
}

class Annotations {
  bool? bold;
  bool? italic;
  bool? strikethrough;
  bool? underline;
  bool? code;
  String? color;

  Annotations(
      {this.bold,
      this.italic,
      this.strikethrough,
      this.underline,
      this.code,
      this.color});

  Annotations.fromJson(Map<String, dynamic> json) {
    bold = json['bold'];
    italic = json['italic'];
    strikethrough = json['strikethrough'];
    underline = json['underline'];
    code = json['code'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.bold != null) {
      data['bold'] = this.bold;
    }
    if (this.italic != null) {
      data['italic'] = this.italic;
    }
    if (this.strikethrough != null) {
      data['strikethrough'] = this.strikethrough;
    }
    if (this.underline != null) {
      data['underline'] = this.underline;
    }
    if (this.code != null) {
      data['code'] = this.code;
    }
    if (this.color != null) {
      data['color'] = this.color;
    }
    return data;
  }
}

class PropertyItem {
  String? id;
  Null? nextUrl;
  String? type;
  RichText? richText;

  PropertyItem({this.id, this.nextUrl, this.type, this.richText});

  PropertyItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nextUrl = json['next_url'];
    type = json['type'];
    richText =
        json['rich_text'] != null ? RichText.fromJson(json['rich_text']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.nextUrl != null) {
      data['next_url'] = this.nextUrl;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.richText != null) {
      data['rich_text'] = this.richText?.toJson();
    }
    return data;
  }
}
