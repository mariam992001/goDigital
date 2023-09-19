class MealModel {
  String? imageUrl;

  String? name;
 bool? isFav;
  List<Content>? content;
  MealModel(Map map) {
    imageUrl = map["image"];
    isFav = map["isFav"];
    List<Map> contenetData = map['content'];
    content = contenetData.map((e) {
      return Content(e);
    }).toList();
  }
}

class Content {
  String? name;
  int? price;
  Content(Map map) {
    name = map["name"];
    price = map["price"];
  }
}