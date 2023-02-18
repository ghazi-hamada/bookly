import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widget/custom_button.dart';
import 'package:bookly/features/home/pressentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/pressentation/views/widgets/custom_book_details_appbat.dart';
import 'package:bookly/features/home/pressentation/views/widgets/custom_Book_Image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * .20),
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
          const BooksAction()
        ],
      ),
    );
  }
}

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: const [
          Expanded(
              child: CustomButton(
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
            text: "19.99€",
          )),
          Expanded(
              child: CustomButton(
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
            text: "Free preview",
          )),
        ],
      ),
    );
  }
}
