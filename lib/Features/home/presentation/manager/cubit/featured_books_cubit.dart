import 'package:bloc/bloc.dart';
import 'package:clean_arc_bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:flutter/cupertino.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
