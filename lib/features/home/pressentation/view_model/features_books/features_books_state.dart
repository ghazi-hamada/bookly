part of 'features_books_cubit.dart';

abstract class FeaturesBooksState extends Equatable {
  const FeaturesBooksState();

  @override
  List<Object> get props => [];
}

class FeaturesBooksInitial extends FeaturesBooksState {}

class FeaturesBooksLoading extends FeaturesBooksState {}

class FeaturesBooksFailure extends FeaturesBooksState {
  final String errorMessage;
  const FeaturesBooksFailure({
    required this.errorMessage,
  });
}

class FeaturesBooksSuccess extends FeaturesBooksState {
  final List<BookModel> books;

  const FeaturesBooksSuccess(this.books);
}
