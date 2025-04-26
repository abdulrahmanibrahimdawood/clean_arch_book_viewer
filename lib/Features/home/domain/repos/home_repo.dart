import 'package:clean_arc_bookly_app/Features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> featchFeaturedBooks();
  Future<List<BookEntity>> featchNewestBooks();
}
