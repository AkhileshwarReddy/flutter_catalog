class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<dynamic, dynamic> map) {
    return Item(
        id: map["id"],
        color: map["color"],
        desc: map["desc"],
        name: map["name"],
        price: map["price"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "color": color,
        "desc": desc,
        "price": price,
        "image": image
      };
}
