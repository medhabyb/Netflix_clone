import 'package:netflix_clone/core/Class/films.dart';
import 'package:stacked/stacked.dart';

class SearchViewModel extends BaseViewModel {
  final List<Films> _FilmList = filmsList;
  List<Films> get gfilms => _FilmList;
  Future<void> init() async {}
}
