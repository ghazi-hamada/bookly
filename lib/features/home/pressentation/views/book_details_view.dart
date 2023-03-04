import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/pressentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(bookModel: bookModel),
      ),
    );
  }
}
