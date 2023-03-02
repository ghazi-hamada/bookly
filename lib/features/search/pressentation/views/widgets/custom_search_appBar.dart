import 'package:bookly/features/search/pressentation/views/widgets/customSearchTextField.dart';
import 'package:flutter/material.dart';

class CustomSearchAppBar extends StatelessWidget {
  const CustomSearchAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_rounded),
              iconSize: 25,
            ),
          ),
          const Expanded(flex: 8, child: CustomSearchTextField()),
        ],
      ),
    );
  }
}
