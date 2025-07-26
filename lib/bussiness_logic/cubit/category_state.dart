part of 'category_cubit.dart';

@immutable
sealed class CategoryState {}

class CategoryInitial extends CategoryState {


}
class CategoryLoaded extends CategoryState {
  final List<dynamic> newsList;
  CategoryLoaded(this.newsList);
  @override
  List<Object?> get props => [newsList];
}
class CategoryFailed extends CategoryState {

}
class CategoryLoading extends CategoryState{

}
