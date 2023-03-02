import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/pressentation/views/widgets/best_seller_list_view_tem.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.toNamed(AppRouter.kBookDetailsView);
        Navigator.pushNamed(context, AppRouter.kBookDetailsView);
      },
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BookListViewItems(),
          );
        },
      ),
    );
  }
}
