import 'dart:convert';

class HowItWorksModel {
  String id;
  String slug;
  String name;
  // String slug_name;
  String photo;
  // String caption_ar;
  // String name_ar;

  HowItWorksModel(
      String id,
      // String caption,
      String name,
      String slug,
      String photo,
      // String caption_ar,
      // String name_ar,
) {
    this.id = id;
    // this.caption = caption;
    this.name = name;
    this.slug = slug;
    this.photo = photo;
    // this.caption_ar = caption_ar;
    // this.name_ar = name_ar;

  }

  HowItWorksModel.fromitem() {
    this.id = '';
    // this.caption = '';
    this.name = '';
    this.slug = '';
    this.photo = '';
    // this.caption_ar = '';
    // this.name_ar = '';

  }
  HowItWorksModel.fromjson() {
    this.id = '';
    // this.caption = '';
    this.name = '';
    this.slug = '';
    this.photo = '';
    // this.caption_ar = '';
    // this.name_ar = '';

  }

  HowItWorksModel.fromJson(Map<String, dynamic> json) {
    this.id = json['_id'].toString()=="null"?"":json['_id'].toString();
    // this.caption = json['caption'].toString()=="null"?"":json['caption'].toString();
    this.name = json['name'].toString()=="null"?"":json['name'].toString();
    this.slug = json['slug'].toString()=="null"?"":json['slug'].toString();
    this.photo = json['photo'].toString()=="null"?"":json['photo'].toString();
    // this.caption_ar = json['caption_ar'].toString()=="null"?"":json['caption_ar'].toString();
    // this.name_ar = json['name_ar'].toString()=="null"?"":json['name_ar'].toString();

  }

  HowItWorksModel.fromString(String data) {
    // prString('data $data');
    Map<String, dynamic> json = jsonDecode(data);
    this.id = json['_id'];
    // this.caption = json['caption'];
    this.name = json['name'];
    this.slug = json['slug'];
    this.photo = json['photo'];
    // this.caption_ar = json['caption_ar'];
    // this.name_ar = json['name_ar'];

  }

  Map<String, dynamic> toJson() => {
        "id": id,
        // "caption": caption,
        "name": name,
        "slug": slug,
        "photo": photo,
        // "caption_ar": caption_ar,
        // "name_ar": name_ar,
      };
  String get getname {
    return name;
  }
}
