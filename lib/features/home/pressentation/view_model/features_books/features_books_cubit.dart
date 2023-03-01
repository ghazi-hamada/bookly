import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'features_books_state.dart';

class FeaturesBooksCubit extends Cubit<FeaturesBooksState> {
  FeaturesBooksCubit() : super(FeaturesBooksInitial());
}
