class WeightCategory {
  String weight;

  WeightCategory(this.weight);
}

List<WeightCategory> wtCategory = categoryData
    .map(
      (item) => WeightCategory(
        item['weight']?.toString() ?? '',
      ),
    )
    .toList();

var categoryData = [
  {"weight": "1 kg"},
  {"weight": "2 kg"},
  {"weight": "3 kg"},
  {"weight": "4 kg",},
  {"weight": "5 kg"},
];
