import 'package:bookly/features/home/pressentation/views/widgets/custom_Book_Image.dart';
import 'package:flutter/material.dart';

class SimilarBookListview extends StatelessWidget {
  const SimilarBookListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookImage(imageUrl: "https://i.guim.co.uk/img/media/77e3e93d6571da3a5d77f74be57e618d5d930430/0_0_2560_1536/master/2560.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=ceefb6a9d3fd5b8e1dad90e40bcba8ad"),
          );
        },
      ),
    );
  }
}
