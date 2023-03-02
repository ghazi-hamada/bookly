import 'package:flutter/material.dart';

import 'package:bookly/features/home/pressentation/views/book_details_view.dart';
import 'package:bookly/features/home/pressentation/views/home_view.dart';
import 'package:bookly/features/search/pressentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splashView.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';

  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (_) => const SplashView(),
    kSearchView: (_) => const SearchView(),
    kHomeView: (_) => const HomeView(),
    kBookDetailsView: (_) => const BookDetailsView(),
  };
}
