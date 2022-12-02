import 'package:netflix_clone/core/Class/films.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.logger.dart';

class StartUpViewModel extends BaseViewModel {
  final Films _films = locator<Films>();
  String path =
      "assets/images/Netflix-logo-on-transparent-background-PNG-removebg-preview.png";

  final _log = getLogger('StartUpViewModel');
  final List<Films> _FilmList = filmsList;
  List<Films> get gfilms => _FilmList;

  Future<void> init() async {
    _log.i(filmsList);
  }
}
