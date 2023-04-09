import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close)),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
      ],
    );
  }
}
