class CategoryModel {
  final String id;
  final String title;
  final String imageSrc;

  CategoryModel({this.id, this.title, this.imageSrc});
}

List<CategoryModel> categories = [
  CategoryModel(
    id: "1",
    title: "Living Room",
    imageSrc: "assets/images/icon_couch.png",
  ),
  CategoryModel(
    id: "2",
    title: "Bedroom",
    imageSrc: "assets/images/icon_electronic_lamp.png",
  ),
  CategoryModel(
    id: "3",
    title: "Bathroom",
    imageSrc: "assets/images/icon_bathtub.png",
  ),
  CategoryModel(
    id: "4",
    title: "Kitchen",
    imageSrc: "assets/images/icon_kitchen.png",
  ),
  CategoryModel(
    id: "5",
    title: "Downstairs",
    imageSrc: "assets/images/icon_chandelier.png",
  ),
];
