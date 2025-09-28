class CategoryModel {
  final String image;
  final String name;

  CategoryModel({required this.image, required this.name});
}
  List<CategoryModel> category = [
    CategoryModel(image: "assets/images/category/Women.png", name: "Women"),
    CategoryModel(image: "assets/images/category/Men.png", name: "Men"),
    CategoryModel(image: "assets/images/category/Kids.png", name: "Kids"),
    CategoryModel(image: "assets/images/category/Deals.png", name: "Deals"),
    CategoryModel(image: "assets/images/category/Health.png", name: "Health"),
  ];