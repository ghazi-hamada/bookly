import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/pressentation/views/widgets/books_details_section.dart';
import 'package:bookly/features/home/pressentation/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

import 'package:bookly/features/home/pressentation/views/widgets/book_Action.dart';
import 'package:bookly/features/home/pressentation/views/widgets/custom_book_details_appbat.dart';
import 'package:bookly/features/home/pressentation/views/widgets/similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.bookModel})
      : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          fillOverscroll: false,
          child: Column(
            children: [
              //app bar
              const CustomBookDetailsAppBar(),
              //image to reating
              BookDetailsSectoin(bookModel: bookModel),
              //Action button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: BooksAction(bookModel: bookModel),
              ),
              //sizedbox 45
              const Expanded(child: SizedBox(height: 45)),
              //text
              const SimilarBookSection(),
              //sizedbox 10
              const SizedBox(height: 10),
              //list view
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SimilarBookListview(),
              ),
              //sizedbox 40
              const SizedBox(height: 40),
            ],
          ),
        )
      ],
    );
  }
}
