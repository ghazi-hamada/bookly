
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/pressentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/pressentation/views/widgets/custom_Book_Image.dart';
import 'package:flutter/material.dart';

class BookDetailsSectoin extends StatelessWidget {
  const BookDetailsSectoin({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .30),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 40),
        Text("The Jungle Book",
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 6),
        Opacity(
          opacity: .5,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 14),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 35),
      ],
    );
  }
}
