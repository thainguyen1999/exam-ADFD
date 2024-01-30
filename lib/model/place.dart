class Place {
  int? id;
  String? name;
  String? image;
  int? rate;

  Place({this.id, this.name, this.image, this.rate});

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      rate: json['rate'] as int?,
    );
  }

  static List<Place> listFromJson(List<dynamic> jsonList) {
    return jsonList.map((json) => Place.fromJson(json)).toList();
  }
}