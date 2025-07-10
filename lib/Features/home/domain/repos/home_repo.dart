import 'package:clean_arc_bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:clean_arc_bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks(
      {int pageNumber = 0});
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
}
