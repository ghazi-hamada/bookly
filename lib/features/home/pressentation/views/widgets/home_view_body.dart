import 'package:bookly/features/home/pressentation/views/widgets/best_seller_list_view_tem.dart';
import 'package:flutter/material.dart';

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/pressentation/views/widgets/custom_appBar.dart';
import 'package:bookly/features/home/pressentation/views/widgets/featured_books_list_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          FeaturedBooksListView(),
          Padding(
            padding: EdgeInsets.only(top: 45, bottom: 20),
            child: Text(
              "Best Seller",
              style: Styles.textStyle18,
              textAlign: TextAlign.start,
            ),
          ),
          BestSellerListViewTem()
        ],
      ),
    );
  }
}
