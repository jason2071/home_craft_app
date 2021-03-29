class CategoryModel {
  final String id;
  final String title;
  final String imageSrc;

  CategoryModel({this.id, this.title, this.imageSrc});
}

List<CategoryModel> categories = [
  CategoryModel(
    id: "1",
    title: "Sofa",
    imageSrc: "assets/images/icon_couch.png",
  ),
  CategoryModel(
    id: "2",
    title: "Lamp",
    imageSrc: "assets/images/icon_electronic_lamp.png",
  ),
  CategoryModel(
    id: "3",
    title: "Bathtub",
    imageSrc: "assets/images/icon_bathtub.png",
  ),
  CategoryModel(
    id: "4",
    title: "Desk",
    imageSrc: "assets/images/icon_education_desk.png",
  ),
  CategoryModel(
    id: "5",
    title: "Chandelier",
    imageSrc: "assets/images/icon_chandelier.png",
  ),
];
