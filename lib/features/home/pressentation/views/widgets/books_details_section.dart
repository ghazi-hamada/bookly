import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/pressentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/pressentation/views/widgets/custom_Book_Image.dart';
import 'package:flutter/material.dart';

class BookDetailsSectoin extends StatelessWidget {
  const BookDetailsSectoin({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        //image
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .30),
          child: CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
        ),
        const SizedBox(height: 40),
        //title
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            bookModel.volumeInfo.title!,
            style: Styles.textStyle25.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 6),
        //author
        Opacity(
          opacity: .6,
          child: Text(
            bookModel.volumeInfo.authors!.join(', '),
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 14),
        //rating
        BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
            count: bookModel.volumeInfo.pageCount!,
            rating: bookModel.volumeInfo.averageRating ?? 0),
        const SizedBox(height: 14),
      ],
    );
  }
}
