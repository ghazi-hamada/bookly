import 'package:bookly/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

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
