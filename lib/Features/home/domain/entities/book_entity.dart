class BookEntity {
  final String title;
  final String authorName;
  final String image;
  final num price;
  final num rating;

  BookEntity(
      {required this.title,
      required this.authorName,
      required this.image,
      required this.price,
      required this.rating});
}
