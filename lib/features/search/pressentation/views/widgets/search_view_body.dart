import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/pressentation/views/widgets/custom_search_appBar.dart';
import 'package:bookly/features/search/pressentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        //appbar search
        CustomSearchAppBar(),

        SizedBox(height: 16),
        //text 'Search Result'
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Search Result",
            style: Styles.textStyle18,
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(height: 16),
        //Result List View
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SearchResultListView(),
        )),
      ],
    );
  }
}
