import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/pressentation/views/widgets/book_Action.dart';
import 'package:bookly/features/home/pressentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/pressentation/views/widgets/custom_book_details_appbat.dart';
import 'package:bookly/features/home/pressentation/views/widgets/custom_Book_Image.dart';
import 'package:bookly/features/home/pressentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          fillOverscroll: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * .30),
                  child: const CustomBookImage(),
                ),
                const SizedBox(height: 40),
                Text("The Jungle Book",
                    style: Styles.textStyle30
                        .copyWith(fontWeight: FontWeight.bold)),
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: BooksAction(),
                ),
                const Expanded(child: SizedBox(height: 45)),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "You can also like",
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SimilarBookListview(),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}
