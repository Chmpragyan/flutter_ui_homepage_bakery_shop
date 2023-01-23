class ItemModel {
  String name;
  String price;
  String image;

  ItemModel(this.name, this.price, this.image);
}

List<ItemModel> itemsAvailable = itemsData
    .map(
      (item) => ItemModel(
        item['name']?.toString() ?? '',
        item['price']?.toString() ?? '',
        item['image']?.toString() ?? '',
      ),
    )
    .toList();

var itemsData = [
  {"name": "Macarons",
    "price": "9.99",
    "image": "macaron.png",
  },
  {"name": "Cheesecake",
    "price": "9.99",
    "image": "cheesecake.png",
  },
  {"name": "Apple Pie",
    "price": "9.99",
    "image": "apple_pie.png",
  },
  {"name": "Red velvet",
    "price": "9.99",
    "image": "cheesecake.png",
  },
  {"name": "Berries",
    "price": "9.99",
    "image": "berries.png",
  },
  {"name": "Vanilla Icecream",
    "price": "9.99",
    "image": "vanilla_cream.png",
  },
];
