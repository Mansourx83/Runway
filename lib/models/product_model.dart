class ProductModel {
  final String image;
  final String price;
  final String name;

  ProductModel({required this.name, required this.price, required this.image});

  static List<ProductModel> products = [
    ProductModel(
      name: "Top Man Black",
      price: "20",
      image: "assets/images/models/model1.png",
    ),
    ProductModel(
      name: "Top man black with Trous..",
      price: "50",
      image: "assets/images/models/model2.png",
    ),
    ProductModel(
      name: "Deep gray essential regul..",
      price: "26",
      image: "assets/images/models/model3.png",
    ),
    ProductModel(
      name: "Gray coat and white T-sh..",
      price: "100",
      image: "assets/images/models/model4.png",
    ),
  ];
}
