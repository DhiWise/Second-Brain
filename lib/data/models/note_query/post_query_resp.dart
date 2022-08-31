class PostQueryResp {
  String? object;
  List<Results>? results;
  Null? nextCursor;
  bool? hasMore;
  String? type;

  PostQueryResp(
      {this.object, this.results, this.nextCursor, this.hasMore, this.type});

  PostQueryResp.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}

class Results {
  String? object;
  String? id;
  String? createdTime;
  String? lastEditedTime;
  CreatedBy? createdBy;
  LastEditedBy? lastEditedBy;
  Null? cover;
  Null? icon;
  Parent? parent;
  bool? archived;
  Properties? properties;
  String? url;

  Results(
      {this.object,
      this.id,
      this.createdTime,
      this.lastEditedTime,
      this.createdBy,
      this.lastEditedBy,
      this.cover,
      this.icon,
      this.parent,
      this.archived,
      this.properties,
      this.url});

  Results.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    createdTime = json['created_time'];
    lastEditedTime = json['last_edited_time'];
    createdBy = json['created_by'] != null
        ? CreatedBy.fromJson(json['created_by'])
        : null;
    lastEditedBy = json['last_edited_by'] != null
        ? LastEditedBy.fromJson(json['last_edited_by'])
        : null;
    cover = json['cover'];
    icon = json['icon'];
    parent = json['parent'] != null ? Parent.fromJson(json['parent']) : null;
    archived = json['archived'];
    properties = json['properties'] != null
        ? Properties.fromJson(json['properties'])
        : null;
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.object != null) {
      data['object'] = this.object;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdTime != null) {
      data['created_time'] = this.createdTime;
    }
    if (this.lastEditedTime != null) {
      data['last_edited_time'] = this.lastEditedTime;
    }
    if (this.createdBy != null) {
      data['created_by'] = this.createdBy?.toJson();
    }
    if (this.lastEditedBy != null) {
      data['last_edited_by'] = this.lastEditedBy?.toJson();
    }
    if (this.cover != null) {
      data['cover'] = this.cover;
    }
    if (this.icon != null) {
      data['icon'] = this.icon;
    }
    if (this.parent != null) {
      data['parent'] = this.parent?.toJson();
    }
    if (this.archived != null) {
      data['archived'] = this.archived;
    }
    if (this.properties != null) {
      data['properties'] = this.properties?.toJson();
    }
    if (this.url != null) {
      data['url'] = this.url;
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

class Parent {
  String? type;
  String? databaseId;

  Parent({this.type, this.databaseId});

  Parent.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    databaseId = json['database_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.databaseId != null) {
      data['database_id'] = this.databaseId;
    }
    return data;
  }
}

class Properties {
  Notes? notes;
  DrinkWater? drinkWater;
  Tags? tags;
  Workout? workout;
  Date? date;
  Read? read;
  Meditate? meditate;
  Name? name;

  Properties(
      {this.notes,
      this.drinkWater,
      this.tags,
      this.workout,
      this.date,
      this.read,
      this.meditate,
      this.name});

  Properties.fromJson(Map<String, dynamic> json) {
    notes = json['notes'] != null
        ? Notes.fromJson(json['notes'])
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
    if (this.notes != null) {
      data['notes'] = this.notes?.toJson();
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

class Notes {
  String? id;

  Notes({this.id});

  Notes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    return data;
  }
}

class DrinkWater {
  String? id;

  DrinkWater({this.id});

  DrinkWater.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    return data;
  }
}

class Tags {
  String? id;

  Tags({this.id});

  Tags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    return data;
  }
}

class Workout {
  String? id;

  Workout({this.id});

  Workout.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    return data;
  }
}

class Date {
  String? id;

  Date({this.id});

  Date.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    return data;
  }
}

class Read {
  String? id;

  Read({this.id});

  Read.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    return data;
  }
}

class Meditate {
  String? id;

  Meditate({this.id});

  Meditate.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    return data;
  }
}

class Name {
  String? id;

  Name({this.id});

  Name.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    return data;
  }
}
