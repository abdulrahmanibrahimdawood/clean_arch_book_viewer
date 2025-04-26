import 'package:clean_arc_bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:clean_arc_bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:clean_arc_bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class FeatchFeaturedBooksUseCase {
  final HomeRepo homeRepo;
  FeatchFeaturedBooksUseCase(this.homeRepo);

  Future<Either<Failure, List<BookEntity>>> featchFeaturedBooks() {
    //check permission
    return homeRepo.featchFeaturedBooks();
  }
}
