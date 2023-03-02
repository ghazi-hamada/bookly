import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            AppAssets.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRouter.kSearchView);
            },
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
            iconSize: 22,
          )
        ],
      ),
    );
  }
}
