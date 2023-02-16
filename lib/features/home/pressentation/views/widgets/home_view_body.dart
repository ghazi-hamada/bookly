import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/pressentation/views/widgets/custom_appBar.dart';
import 'package:bookly/features/home/pressentation/views/widgets/featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
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
          BestSelerListViewItem()
        ],
      ),
    );
  }
}

class BestSelerListViewItem extends StatelessWidget {
  const BestSelerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                  image: AssetImage(
                    AppAssets.book1,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
