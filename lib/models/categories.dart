class ItemCategories {
  String name;

  ItemCategories(this.name);
}

List<ItemCategories> category = categoryData
    .map(
      (item) => ItemCategories(
        item['name']?.toString() ?? '',
      ),
    )
    .toList();

var categoryData = [
  {"name": "All"},
  {"name": "Macarons"},
  {"name": "Cheesecake"},
  {"name": "Apple Pie",},
  {"name": "Berries"},
  {"name": "Red velvet"},
];
