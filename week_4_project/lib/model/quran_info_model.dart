class QuranInfoModel {
  List<Chapters>? chapters;
  Sajdas? sajdas;
  Sajdas? rukus;
  Sajdas? pages;
  Sajdas? manzils;

  QuranInfoModel({this.chapters, this.sajdas, this.rukus});

  QuranInfoModel.fromJson(Map<String, dynamic> json) {
    if (json['chapters'] != null) {
      chapters = <Chapters>[];
      json['chapters'].forEach((v) {
        chapters!.add(new Chapters.fromJson(v));
      });
    }
    sajdas = json['sajdas'] != null
        ? new Sajdas.fromJson(json['sajdas'])
        : null;
    rukus = json['rukus'] != null ? new Sajdas.fromJson(json['rukus']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.chapters != null) {
      data['chapters'] = this.chapters!.map((v) => v.toJson()).toList();
    }
    if (this.sajdas != null) {
      data['sajdas'] = this.sajdas!.toJson();
    }
    if (this.rukus != null) {
      data['rukus'] = this.rukus!.toJson();
    }
    return data;
  }
}

class Chapters {
  int? chapter;
  String? name;
  String? englishname;
  String? arabicname;
  String? revelation;

  Chapters({
    this.chapter,
    this.name,
    this.englishname,
    this.arabicname,
    this.revelation,
  });

  Chapters.fromJson(Map<String, dynamic> json) {
    chapter = json['chapter'];
    name = json['name'];
    englishname = json['englishname'];
    arabicname = json['arabicname'];
    revelation = json['revelation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['chapter'] = this.chapter;
    data['name'] = this.name;
    data['englishname'] = this.englishname;
    data['arabicname'] = this.arabicname;
    data['revelation'] = this.revelation;
    return data;
  }
}

class Sajdas {
  int? count;
  List<References>? references;

  Sajdas({this.count, this.references});

  Sajdas.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    if (json['references'] != null) {
      references = <References>[];
      json['references'].forEach((v) {
        references!.add(new References.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    if (this.references != null) {
      data['references'] = this.references!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SajdaReferences {
  int? sajda;
  int? chapter;
  int? verse;
  bool? recommended;
  bool? obligatory;

  SajdaReferences({
    this.sajda,
    this.chapter,
    this.verse,
    this.recommended,
    this.obligatory,
  });

  SajdaReferences.fromJson(Map<String, dynamic> json) {
    sajda = json['sajda'];
    chapter = json['chapter'];
    verse = json['verse'];
    recommended = json['recommended'];
    obligatory = json['obligatory'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sajda'] = this.sajda;
    data['chapter'] = this.chapter;
    data['verse'] = this.verse;
    data['recommended'] = this.recommended;
    data['obligatory'] = this.obligatory;
    return data;
  }
}

class References {
  int? ruku;
  Start? start;
  Start? end;

  References({this.ruku, this.start, this.end});

  References.fromJson(Map<String, dynamic> json) {
    ruku = json['ruku'];
    start = json['start'] != null ? new Start.fromJson(json['start']) : null;
    end = json['end'] != null ? new Start.fromJson(json['end']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ruku'] = this.ruku;
    if (this.start != null) {
      data['start'] = this.start!.toJson();
    }
    if (this.end != null) {
      data['end'] = this.end!.toJson();
    }
    return data;
  }
}

class Start {
  int? chapter;
  int? verse;

  Start({this.chapter, this.verse});

  Start.fromJson(Map<String, dynamic> json) {
    chapter = json['chapter'];
    verse = json['verse'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['chapter'] = this.chapter;
    data['verse'] = this.verse;
    return data;
  }
}
