class CardModel {
  final String id;
  final String name;
  final String picture;

  CardModel({
    required this.id,
    required this.name,
    required this.picture,
  });

  // Assuming you have a method to convert from JSON to CardModel
  CardModel.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        picture = json["picture"];
}
