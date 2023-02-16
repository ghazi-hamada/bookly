import 'package:bookly/features/home/pressentation/views/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [CustomAppBar()],
    );
  }
}
