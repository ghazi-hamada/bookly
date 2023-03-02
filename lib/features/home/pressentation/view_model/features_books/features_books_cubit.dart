import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'features_books_state.dart';

class FeaturesBooksCubit extends Cubit<FeaturesBooksState> {
  FeaturesBooksCubit(this.homeRepo) : super(FeaturesBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFelteredBooks() async {
    emit(FeaturesBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturesBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FeaturesBooksSuccess(books));
    });
  }
}
