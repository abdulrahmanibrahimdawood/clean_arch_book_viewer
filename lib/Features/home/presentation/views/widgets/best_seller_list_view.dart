import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manager/newest_books_cubit/newest_books_cubit.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is NewestBooksFailure) {
          return Center(
              child:
                  Text(state.errMessage, style: TextStyle(color: Colors.red)));
        } else if (state is NewestBooksSuccess) {
          final books = state.books;
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(book: books[index]),
              );
            },
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
