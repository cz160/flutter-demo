

class CookBook {
  const CookBook({
    this.name,
    this.img,
    this.all_click,
    this.favorites
  });

  final String name;
  final String img;
  final String all_click;
  final String favorites;

}

const CookBook cookBook = CookBook(
  name: "\u5c0f\u7092\u725b\u8089",
  img: "http:\/\/s1.cdn.jiaonizuocai.com\/videoImg\/201510\/1313\/561c9a314c8bb.jpg\/OTAweDYwMA",
  all_click: "961.2\u4e07",
  favorites: "6.0\u4e07",
);

final List<CookBook> lists = [
  cookBook,
  cookBook,
  cookBook
];

