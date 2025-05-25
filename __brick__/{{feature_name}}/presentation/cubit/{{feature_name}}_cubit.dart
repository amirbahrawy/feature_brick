import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repository/{{feature_name}}_repository.dart';

part 'home_cubit.freezed.dart';

@freezed
class {{feature_name.pascalCase()}}State with _${{feature_name.pascalCase()}}State {
  factory {{feature_name.pascalCase()}}State({
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _{{feature_name.pascalCase()}}State;
}

@injectable
class {{feature_name.pascalCase()}}Cubit extends Cubit<{{feature_name.pascalCase()}}State> {
  final {{feature_name.pascalCase()}}Repository _{{feature_name}}Repository;

  {{feature_name.pascalCase()}}Cubit(
    this._{{feature_name}}Repository,
  ) : super({{feature_name.pascalCase()}}State());

  Future<void> init() async {
    emit(state.copyWith(isLoading: true));
    try {
      // Initialize your state here
      emit(state.copyWith(isLoading: false));
    } catch (e) {
      // Handle error
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
