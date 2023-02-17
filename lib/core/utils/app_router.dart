import 'package:bookly/features/home/pressentation/views/book_details_view.dart';
import 'package:bookly/features/home/pressentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splashView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(path: kBookDetailsView, builder: (context, state) => const BookDetailsView()),
    ],
  );
}
