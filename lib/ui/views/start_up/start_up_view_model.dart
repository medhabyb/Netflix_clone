import 'package:netflix_clone/core/Class/films.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.logger.dart';

class StartUpViewModel extends BaseViewModel {
  final Films _films = locator<Films>();
  String path =
      "assets/images/Netflix-logo-on-transparent-background-PNG-removebg-preview.png";

  final _log = getLogger('StartUpViewModel');
  final List<Films> _filmsList = [
    Films(
        id: 0,
        filmName: "Iron Fist",
        path: "assets/images/iron.jpg",
        Description: "A good tv show"),
    Films(
        id: 1,
        filmName: "Daredevil",
        path: "assets/images/dd.jpg",
        Description: "A good tv show"),
    Films(
        id: 2,
        filmName: "Luck Cage",
        path: "assets/images/luck.jpg",
        Description: "A good tv show"),
    Films(
        id: 3,
        filmName: "Jessica Jones",
        path: "assets/images/jj.jpg",
        Description: "A good tv show"),
    Films(
        id: 4,
        filmName: "The Queen's Gambiy",
        path: "assets/images/queen.jpg",
        Description: "A good tv show"),
    Films(
        id: 5,
        filmName: "Dark",
        path: "assets/images/dark.jpg",
        Description: "A good tv show"),
  ];
  List<Films> get flist => _filmsList;
  Future<void> init() async {
    _log.i(_filmsList);
  }
}
