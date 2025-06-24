import 'package:clean_arc_bookly_app/Features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
    throw UnimplementedError();
  }
}
