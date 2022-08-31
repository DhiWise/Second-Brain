class PostSearchResp {
  String? object;
  List<Results>? results;
  Null? nextCursor;
  bool? hasMore;
  String? type;
  PageOrDatabase? pageOrDatabase;

  PostSearchResp(
      {this.object,
      this.results,
      this.nextCursor,
      this.hasMore,
      this.type,
      this.pageOrDatabase});

  PostSearchResp.fromJson(Map<String, dynamic> json) {
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
    pageOrDatabase = json['page_or_database'] != null
        ? PageOrDatabase.fromJson(json['page_or_database'])
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
    if (this.pageOrDatabase != null) {
      data['page_or_database'] = this.pageOrDatabase?.toJson();
    }
    return data;
  }
}

class Results {
  String? object;
  String? id;
  Null? cover;
  Null? icon;
  String? createdTime;
  CreatedBy? createdBy;
  LastEditedBy? lastEditedBy;
  String? lastEditedTime;
  List<Title>? title;
  List? description;
  bool? isInline;
  Properties? properties;
  Parent? parent;
  String? url;
  bool? archived;

  Results(
      {this.object,
      this.id,
      this.cover,
      this.icon,
      this.createdTime,
      this.createdBy,
      this.lastEditedBy,
      this.lastEditedTime,
      this.title,
      this.description,
      this.isInline,
      this.properties,
      this.parent,
      this.url,
      this.archived});

  Results.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    cover = json['cover'];
    icon = json['icon'];
    createdTime = json['created_time'];
    createdBy = json['created_by'] != null
        ? CreatedBy.fromJson(json['created_by'])
        : null;
    lastEditedBy = json['last_edited_by'] != null
        ? LastEditedBy.fromJson(json['last_edited_by'])
        : null;
    lastEditedTime = json['last_edited_time'];
    if (json['title'] != null) {
      title = <Title>[];
      json['title'].forEach((v) {
        title?.add(Title.fromJson(v));
      });
    }
    if (json['description'] != null) {
      description = [];
      json['description'].forEach((v) {
        description?.add(v);
      });
    }
    isInline = json['is_inline'];
    properties = json['properties'] != null
        ? Properties.fromJson(json['properties'])
        : null;
    parent = json['parent'] != null ? Parent.fromJson(json['parent']) : null;
    url = json['url'];
    archived = json['archived'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.object != null) {
      data['object'] = this.object;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.cover != null) {
      data['cover'] = this.cover;
    }
    if (this.icon != null) {
      data['icon'] = this.icon;
    }
    if (this.createdTime != null) {
      data['created_time'] = this.createdTime;
    }
    if (this.createdBy != null) {
      data['created_by'] = this.createdBy?.toJson();
    }
    if (this.lastEditedBy != null) {
      data['last_edited_by'] = this.lastEditedBy?.toJson();
    }
    if (this.lastEditedTime != null) {
      data['last_edited_time'] = this.lastEditedTime;
    }
    if (this.title != null) {
      data['title'] = this.title?.map((v) => v.toJson()).toList();
    }
    if (this.description != null) {
      data['description'] = this.description?.map((v) => v).toList();
    }
    if (this.isInline != null) {
      data['is_inline'] = this.isInline;
    }
    if (this.properties != null) {
      data['properties'] = this.properties?.toJson();
    }
    if (this.parent != null) {
      data['parent'] = this.parent?.toJson();
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.archived != null) {
      data['archived'] = this.archived;
    }
    return data;
  }
}

class CreatedBy {
  String? object;
  String? id;

  CreatedBy({this.object, this.id});

  CreatedBy.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.object != null) {
      data['object'] = this.object;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    return data;
  }
}

class LastEditedBy {
  String? object;
  String? id;

  LastEditedBy({this.object, this.id});

  LastEditedBy.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.object != null) {
      data['object'] = this.object;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    return data;
  }
}

class Title {
  String? type;
  Text? text;
  Annotations? annotations;
  String? plainText;
  Null? href;

  Title({this.type, this.text, this.annotations, this.plainText, this.href});

  Title.fromJson(Map<String, dynamic> json) {
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

class Properties {
  WakeEarly? wakeEarly;
  DrinkWater? drinkWater;
  Tags? tags;
  Workout? workout;
  Date? date;
  Read? read;
  Meditate? meditate;
  Name? name;

  Properties(
      {this.wakeEarly,
      this.drinkWater,
      this.tags,
      this.workout,
      this.date,
      this.read,
      this.meditate,
      this.name});

  Properties.fromJson(Map<String, dynamic> json) {
    wakeEarly = json['wakeEarly'] != null
        ? WakeEarly.fromJson(json['wakeEarly'])
        : null;
    drinkWater = json['drinkWater'] != null
        ? DrinkWater.fromJson(json['drinkWater'])
        : null;
    tags = json['Tags'] != null ? Tags.fromJson(json['Tags']) : null;
    workout =
        json['workout'] != null ? Workout.fromJson(json['workout']) : null;
    date = json['Date'] != null ? Date.fromJson(json['Date']) : null;
    read = json['read'] != null ? Read.fromJson(json['read']) : null;
    meditate =
        json['meditate'] != null ? Meditate.fromJson(json['meditate']) : null;
    name = json['Name'] != null ? Name.fromJson(json['Name']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.wakeEarly != null) {
      data['wakeEarly'] = this.wakeEarly?.toJson();
    }
    if (this.drinkWater != null) {
      data['drinkWater'] = this.drinkWater?.toJson();
    }
    if (this.tags != null) {
      data['Tags'] = this.tags?.toJson();
    }
    if (this.workout != null) {
      data['workout'] = this.workout?.toJson();
    }
    if (this.date != null) {
      data['Date'] = this.date?.toJson();
    }
    if (this.read != null) {
      data['read'] = this.read?.toJson();
    }
    if (this.meditate != null) {
      data['meditate'] = this.meditate?.toJson();
    }
    if (this.name != null) {
      data['Name'] = this.name?.toJson();
    }
    return data;
  }
}

class WakeEarly {
  String? id;
  String? name;
  String? type;
  Checkbox? checkbox;

  WakeEarly({this.id, this.name, this.type, this.checkbox});

  WakeEarly.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    checkbox =
        json['checkbox'] != null ? Checkbox.fromJson(json['checkbox']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.checkbox != null) {
      data['checkbox'] = this.checkbox?.toJson();
    }
    return data;
  }
}

class Checkbox {
  Checkbox();

  Checkbox.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    return data;
  }
}

class DrinkWater {
  String? id;
  String? name;
  String? type;
  Checkbox? checkbox;

  DrinkWater({this.id, this.name, this.type, this.checkbox});

  DrinkWater.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    checkbox =
        json['checkbox'] != null ? Checkbox.fromJson(json['checkbox']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.checkbox != null) {
      data['checkbox'] = this.checkbox?.toJson();
    }
    return data;
  }
}

class Tags {
  String? id;
  String? name;
  String? type;
  MultiSelect? multiSelect;

  Tags({this.id, this.name, this.type, this.multiSelect});

  Tags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    multiSelect = json['multi_select'] != null
        ? MultiSelect.fromJson(json['multi_select'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.multiSelect != null) {
      data['multi_select'] = this.multiSelect?.toJson();
    }
    return data;
  }
}

class MultiSelect {
  List? options;

  MultiSelect({this.options});

  MultiSelect.fromJson(Map<String, dynamic> json) {
    if (json['options'] != null) {
      options = [];
      json['options'].forEach((v) {
        options?.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.options != null) {
      data['options'] = this.options?.map((v) => v).toList();
    }
    return data;
  }
}

class Workout {
  String? id;
  String? name;
  String? type;
  Checkbox? checkbox;

  Workout({this.id, this.name, this.type, this.checkbox});

  Workout.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    checkbox =
        json['checkbox'] != null ? Checkbox.fromJson(json['checkbox']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.checkbox != null) {
      data['checkbox'] = this.checkbox?.toJson();
    }
    return data;
  }
}

class Date {
  String? id;
  String? name;
  String? type;
  DateItem? date;

  Date({this.id, this.name, this.type, this.date});

  Date.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    date = json['date'] != null ? DateItem.fromJson(json['date']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.date != null) {
      data['date'] = this.date?.toJson();
    }
    return data;
  }
}

class DateItem {
  DateItem();

  DateItem.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    return data;
  }
}

class Read {
  String? id;
  String? name;
  String? type;
  Checkbox? checkbox;

  Read({this.id, this.name, this.type, this.checkbox});

  Read.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    checkbox =
        json['checkbox'] != null ? Checkbox.fromJson(json['checkbox']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.checkbox != null) {
      data['checkbox'] = this.checkbox?.toJson();
    }
    return data;
  }
}

class Meditate {
  String? id;
  String? name;
  String? type;
  Checkbox? checkbox;

  Meditate({this.id, this.name, this.type, this.checkbox});

  Meditate.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    checkbox =
        json['checkbox'] != null ? Checkbox.fromJson(json['checkbox']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.checkbox != null) {
      data['checkbox'] = this.checkbox?.toJson();
    }
    return data;
  }
}

class Name {
  String? id;
  String? name;
  String? type;
  Title? title;

  Name({this.id, this.name, this.type, this.title});

  Name.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    title = json['title'] != null ? Title.fromJson(json['title']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.title != null) {
      data['title'] = this.title?.toJson();
    }
    return data;
  }
}

class Parent {
  String? type;
  bool? workspace;

  Parent({this.type, this.workspace});

  Parent.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    workspace = json['workspace'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.workspace != null) {
      data['workspace'] = this.workspace;
    }
    return data;
  }
}

class PageOrDatabase {
  PageOrDatabase();

  PageOrDatabase.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    return data;
  }
}
