import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bookly/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.solidStar,
            color: Colors.amber,
          ),
          const SizedBox(width: 6.3),
          const Text(
            "4.8",
            style: Styles.textStyle16,
          ),
          const SizedBox(width: 9),
          Text(
            "(2390)",
            style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
          ),
        ],
      ),
    );
  }
}
