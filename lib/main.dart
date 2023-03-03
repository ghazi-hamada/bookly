import 'package:bookly/core/utils/api_sercice.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/pressentation/view_model/features_books/features_books_cubit.dart';
import 'package:bookly/features/home/pressentation/view_model/newset_books_cubit/newset_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturesBooksCubit(HomeRepoImpl(ApiSercice(Dio())))..fetchFelteredBooks()),
        BlocProvider(
            create: (context) => NewsetBooksCubit(HomeRepoImpl(ApiSercice(Dio())))),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'bookly App',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KprimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        routes: AppRouter.routes,
      ),
    );
  }
}
