import 'package:greengrocer/src/models/item_model.dart';

ItemModel apple = ItemModel(
  imgUrl: "assets/fruits/apple.png",
  itemName: "Maçã",
  price: 5.5,
  unit: "kg",
  description: "A melhor maçã do mercado está aqui, compre ja antes que acabe",
);

ItemModel grape = ItemModel(
  imgUrl: "assets/fruits/grape.png",
  itemName: "Uva",
  price: 7.4,
  unit: "kg",
  description: "A melhor Uva do mercado está aqui, compre ja antes que acabe",
);

ItemModel guava = ItemModel(
  imgUrl: "assets/fruits/guava.png",
  itemName: "Goiaba",
  price: 11.5,
  unit: "kg",
  description:
      "A melhor Goiaba do mercado está aqui, compre ja antes que acabe",
);

ItemModel kiwi = ItemModel(
  imgUrl: "assets/fruits/kiwi.png",
  itemName: "Kiwi",
  price: 15.4,
  unit: "un",
  description: "A melhor kiwi do mercado está aqui, compre ja antes que acabe",
);

ItemModel mango = ItemModel(
  imgUrl: "assets/fruits/mango.png",
  itemName: "mango",
  price: 5.7,
  unit: "kg",
  description: "A melhor mango do mercado está aqui, compre ja antes que acabe",
);

ItemModel papaya = ItemModel(
  imgUrl: "assets/fruits/papaya.png",
  itemName: "Mamão",
  price: 3.1,
  unit: "kg",
  description: "A melhor mamão do mercado está aqui, compre ja antes que acabe",
);

List<ItemModel> Items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categories = [
  'Frutas',
  'Legumes',
  'Grãos',
  'Temperos',
  'Cereais',
];
