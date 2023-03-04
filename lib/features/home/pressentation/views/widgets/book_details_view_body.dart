import 'package:bookly/features/home/pressentation/views/widgets/books_details_section.dart';
import 'package:bookly/features/home/pressentation/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

import 'package:bookly/features/home/pressentation/views/widgets/book_Action.dart';
import 'package:bookly/features/home/pressentation/views/widgets/custom_book_details_appbat.dart';
import 'package:bookly/features/home/pressentation/views/widgets/similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    print(arguments['bookModel']);
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          fillOverscroll: false,
          child: Column(
            children: const [
              //app bar
              CustomBookDetailsAppBar(),
              //image to reating
              BookDetailsSectoin(),
              //Action button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: BooksAction(),
              ),
              //sizedbox 45
              Expanded(child: SizedBox(height: 45)),
              //text
              SimilarBookSection(),
              //sizedbox 10
              SizedBox(height: 10),
              //list view
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SimilarBookListview(),
              ),
              //sizedbox 40
              SizedBox(height: 40),
            ],
          ),
        )
      ],
    );
  }
}
