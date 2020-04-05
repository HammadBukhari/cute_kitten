import 'dart:convert';

class CatPhoto {
  String id;
  String url;
  int width;
  int height;
  
  CatPhoto({
    this.id,
    this.url,
    this.width,
    this.height,
  });
  

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'url': url,
      'width': width,
      'height': height,
    };
  }

  static CatPhoto fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return CatPhoto(
      id: map['id'],
      url: map['url'],
      width: map['width'],
      height: map['height'],
    );
  }

  String toJson() => json.encode(toMap());

  static CatPhoto fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'CatPhoto(id: $id, url: $url, width: $width, height: $height)';
  }
}
