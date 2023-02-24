import 'package:bookly/features/home/pressentation/views/book_details_view.dart';
import 'package:bookly/features/home/pressentation/views/home_view.dart';
import 'package:bookly/features/search/pressentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splashView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';

  static List<GetPage<dynamic>> routes = [
    GetPage(name: '/', page: () => const SplashView()),
    GetPage(name: kSearchView, page: () => const SearchView()),
    GetPage(name: kHomeView, page: () => const HomeView()),
    GetPage(name: kBookDetailsView, page: () => const BookDetailsView()),
  ];
}
