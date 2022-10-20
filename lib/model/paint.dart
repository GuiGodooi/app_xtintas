class Paint {
  String? name;
  String? image;
  int? price;
  List<Benefits>? benefits;

  Paint({this.name, this.image, this.price, this.benefits});

  Paint.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    image = json["image"];
    price = json["price"];
    benefits = json["benefits"] == null
        ? null
        : (json["benefits"] as List).map((e) => Benefits.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["image"] = image;
    _data["price"] = price;
    if (benefits != null) {
      _data["benefits"] = benefits?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Benefits {
  String? name;
  String? icon;

  Benefits({this.name, this.icon});

  Benefits.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    icon = json["icon"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["icon"] = icon;
    return _data;
  }
}
