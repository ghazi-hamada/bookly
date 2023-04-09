import 'package:flutter/material.dart';

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/pressentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/pressentation/views/widgets/custom_appBar.dart';
import 'package:bookly/features/home/pressentation/views/widgets/featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              //app bar
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              //Newset Books View
              FeaturedBooksListView(),
              //text
              Padding(
                padding: EdgeInsets.only(top: 45, bottom: 20),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "Newset Books",
                    style: Styles.textStyle18,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
