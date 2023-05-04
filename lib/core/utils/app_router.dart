import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookly/core/utils/api_sercice.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/pressentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/pressentation/views/book_details_view.dart';
import 'package:bookly/features/home/pressentation/views/home_view.dart';
import 'package:bookly/features/search/pressentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splashView.dart';

import '../../test.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';

  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (_) =>  HomePage(), //SplashView(),
    kSearchView: (_) => const SearchView(),
    kHomeView: (_) => const HomeView(),
    // kBookDetailsView: (_) => BlocProvider(
    //       create: (_) =>
    //           SimilarBooksCubit(HomeRepoImpl(ApiSercice(Dio())))..fetchSimilarBooks(),
    //       child:  BookDetailsView(bookModel: ),
    //     ),
  };
}
