import 'package:clean_arc_bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key, required this.books});
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          itemCount: books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomBookImage(
                image: books[index].image ?? '',
              ),
            );
          }),
    );
  }
}
