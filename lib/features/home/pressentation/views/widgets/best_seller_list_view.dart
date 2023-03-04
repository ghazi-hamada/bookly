import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/pressentation/view_model/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly/features/home/pressentation/views/widgets/best_seller_list_view_tem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          print(state.books.length);
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRouter.kBookDetailsView,arguments: {
                "bookModel":BookModel
              });
            },
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItems(bookModel: state.books[index]),
                );
              },
            ),
          );
        } else if (state is NewsetBooksFailure) {
          CustomErrorWidget(errorMessage: state.errorMessge);
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
